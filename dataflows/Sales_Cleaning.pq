let
    SourceCustomers = Csv.Document(File.Contents("customers.csv"),[Delimiter=",", Columns=6, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Customers = Table.PromoteHeaders(SourceCustomers, [PromoteAllScalars=true]),
    SourceOrders = Csv.Document(File.Contents("orders.csv"),[Delimiter=",", Columns=6, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Orders = Table.PromoteHeaders(SourceOrders, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(Orders,{{"OrderID", Int64.Type},{"OrderDate", type date},{"CustomerID", Int64.Type},{"Qty", Int64.Type},{"UnitPrice", type number}}),
    AddedLineTotal = Table.AddColumn(ChangedTypes, "LineTotal", each [Qty] * [UnitPrice], type number),
    Merged = Table.NestedJoin(AddedLineTotal, {"CustomerID"}, Customers, {"CustomerID"}, "Customer", JoinKind.LeftOuter),
    Expanded = Table.ExpandTableColumn(Merged, "Customer", {"FirstName","LastName","City","State"}, {"FirstName","LastName","City","State"})
in
    Expanded