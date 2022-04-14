PK
     ��T���    N   List_the_product_subcategories_and_categories_provided_by_each_supplier.cypher// List the product subcategories and categories provided by each supplier.
MATCH (v:Vendor)-->(:Product)-->(s:SubCategory)-->(c:Category)
RETURN v.vendorName as Vendor, collect(distinct s.subCategoryName) as SubCategories, collect(distinct c.categoryName) as Categories;PK
     ��TS@�e1  1  N   List_the_total_products_purchased_for_a_given_product_for_each_customer.cypher// List the total products purchased for a given product for each customer
MATCH (c:Customer)-[:PURCHASED]->(:Order)-[o:PRODUCT]->(p:Product {productName: "Sport-100 Helmet, Black"})
RETURN DISTINCT c.fullName as Customer, SUM(o.quantity) AS TotalProductsPurchased
ORDER BY TotalProductsPurchased DESC;PK
     ��T��'Z^  ^  R   List_the_total_products_purchased_for_a_given_subcategory_for_each_customer.cypher// List the total products purchased for a given subcategory for each customer
MATCH (c:Customer)-[:PURCHASED]->(:Order)-[o:PRODUCT]->(p:Product),
      (p)-[:PART_OF_SUBCAT]->(s:SubCategory {subCategoryName:"Mountain Bikes"})
RETURN DISTINCT c.fullName as Customer, SUM(o.quantity) AS TotalProductsPurchased
ORDER BY TotalProductsPurchased DESC;PK
     ��T�/oa   a   &   MATCH_e_Employee_REPORTS_TO_sub.cypherMATCH  (e:Employee)<-[:REPORTS_TO]-(sub)
RETURN sub.fullName AS Employee, e.fullName AS Manager;PK
     ��T�%XZ   Z   N   MATCH_c_Customer_PURCHASED_n_Order_orderId_43659_SOLD_e_Employee_RETURN.cypherMATCH (c:Customer)-[:PURCHASED]->(n:Order{orderId:'43659'})<-[:SOLD]-(e:Employee) RETURN *PK
     ��TI-�8   8   5   MATCH_e_Employee_REPORTS_TO_e1_Employee_Return.cypherMATCH (e:Employee)<-[:REPORTS_TO]-(e1:Employee) Return *PK
     ��T��r�w   w   N   MATCH_o_Order_r_PRODUCT_p_Product_productName_Long_Sleeve_Logo_Jersey_L.cypherMATCH (o:Order)-[r:PRODUCT]->(p:Product {productName: "Long-Sleeve Logo Jersey, L"})
RETURN COUNT(o.orderId) as Count;PK
     ��TED�]   ]   T   MATCH_p_Product_SUPPLIES_v_Vendor_vendorName_International_Trek_Center_Return.cypherMATCH (p:Product) <- [:SUPPLIES]-(v:Vendor{vendorName: 'International Trek Center'}) Return *PK
     ��T�s�C   C   /   MATCH_p_Product_s_SubCategory_c_Category.cypherMATCH (p:Product)-->(s:SubCategory)-->(c:Category)
RETURN p, s, c;PK
     ��T�0l2   2   %   MATCH_s_SubCategory_c_Category.cypherMATCH (s:SubCategory)-->(c:Category)
RETURN s, c;PK
     ��T�WEk  k  [   Which_employee_had_the_highest_cross_selling_count_of_AWC_Logo_Cap_and_which_product.cypher// Which employee had the highest cross-selling count of 'AWC Logo Cap' and which product?
MATCH (p:Product {productName:'AWC Logo Cap'})<-[:PRODUCT]-(:Order)<-[:SOLD]-(employee),
      (employee)-[:SOLD]->(o2)-[:PRODUCT]->(other:Product)
RETURN employee.fullName as Employee, other.productName as Product, count(distinct o2) as Count
ORDER BY Count DESC
LIMIT 5;PK 
     ��T���    N                 List_the_product_subcategories_and_categories_provided_by_each_supplier.cypherPK 
     ��TS@�e1  1  N             }  List_the_total_products_purchased_for_a_given_product_for_each_customer.cypherPK 
     ��T��'Z^  ^  R               List_the_total_products_purchased_for_a_given_subcategory_for_each_customer.cypherPK 
     ��T�/oa   a   &             �  MATCH_e_Employee_REPORTS_TO_sub.cypherPK 
     ��T�%XZ   Z   N             �  MATCH_c_Customer_PURCHASED_n_Order_orderId_43659_SOLD_e_Employee_RETURN.cypherPK 
     ��TI-�8   8   5             S  MATCH_e_Employee_REPORTS_TO_e1_Employee_Return.cypherPK 
     ��T��r�w   w   N             �  MATCH_o_Order_r_PRODUCT_p_Product_productName_Long_Sleeve_Logo_Jersey_L.cypherPK 
     ��TED�]   ]   T             �  MATCH_p_Product_SUPPLIES_v_Vendor_vendorName_International_Trek_Center_Return.cypherPK 
     ��T�s�C   C   /             �  MATCH_p_Product_s_SubCategory_c_Category.cypherPK 
     ��T�0l2   2   %              	  MATCH_s_SubCategory_c_Category.cypherPK 
     ��T�WEk  k  [             �	  Which_employee_had_the_highest_cross_selling_count_of_AWC_Logo_Cap_and_which_product.cypherPK      �  y    