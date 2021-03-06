DELETE FROM [Products]
    WHERE (([ProductID] = @Original_ProductID)
    AND ([ProductName] = @Original_ProductName)
    AND ((@IsNull_SupplierID = 1 AND [SupplierID] IS NULL)
       OR ([SupplierID] = @Original_SupplierID))
    AND ((@IsNull_CategoryID = 1 AND [CategoryID] IS NULL)
       OR ([CategoryID] = @Original_CategoryID))
    AND ((@IsNull_QuantityPerUnit = 1 AND [QuantityPerUnit] IS NULL)
       OR ([QuantityPerUnit] = @Original_QuantityPerUnit))
    AND ((@IsNull_UnitPrice = 1 AND [UnitPrice] IS NULL)
       OR ([UnitPrice] = @Original_UnitPrice))
    AND ((@IsNull_UnitsInStock = 1 AND [UnitsInStock] IS NULL)
       OR ([UnitsInStock] = @Original_UnitsInStock))
    AND ((@IsNull_UnitsOnOrder = 1 AND [UnitsOnOrder] IS NULL)
       OR ([UnitsOnOrder] = @Original_UnitsOnOrder))
    AND ((@IsNull_ReorderLevel = 1 AND [ReorderLevel] IS NULL)
       OR ([ReorderLevel] = @Original_ReorderLevel))
    AND ([Discontinued] = @Original_Discontinued))