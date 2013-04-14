class NonArrayArgument < StandardError ; end


class CartesianProduct
  include Enumerable
  # YOUR CODE HERE

  def calc_product
    @array_b.each do |b_elt|
        @array_a.each do |a_elt|
          @product << [a_elt,b_elt]
        end
    end
  end

  def initialize( arrA=[], arrB=[] )
    
    raise NonArrayArgument unless (arrA && arrB).is_a? Array    
        
    @array_a = arrA
    @array_b = arrB

    @product = []
    calc_product
  end

  def each
    @product.each do |p_elt|
        yield p_elt    
    end
  end

  private :calc_product

end
