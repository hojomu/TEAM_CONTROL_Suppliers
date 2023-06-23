package control.suppliers.model;

public class OrderedProductDTO {
	
    private int ordered_product_id;
    private int count;
    private int order_id;
    private int product_id;
    /*private List<String> list;*/  

    public int getOrdered_product_id() {
        return ordered_product_id;
    }

    public void setOrdered_product_id(int ordered_product_id) {
        this.ordered_product_id = ordered_product_id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

/*    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }*/

    @Override
    public String toString() {
        return "OrderedProductVO{" +
                "ordered_product_id=" + ordered_product_id +
                ", count=" + count +
                ", order_id=" + order_id +
                ", product_id=" + product_id +
              /*  ", list=" + list +*/
                '}';
    }
}
