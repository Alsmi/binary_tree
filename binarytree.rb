require './node'

class BinaryTree
	attr_accessor :root, :total_nodes

	def initialize
		@root = root
    	@total_nodes = 0
  	end

  	def add(new_value)

	  if @root.nil?
	    @root = Node.new(new_value)
	    @total_nodes = 1
	    return
	  end

	  current = @root
	  while true
	    if new_value >= current.value
	      if current.right.nil?
	        current.right = Node.new new_value
	        break
	      else
	        current = current.right
	      end
	    else
	      if current.left.nil?
	        current.left = Node.new new_value
	        break
	      else
	        current = current.left
	      end
	    end
	  end

	  @total_nodes += 1

	end

	def each current = @root
		return if current.nil?
		yield current
		each(current.left) do |node|
			yield node
		end
		each(current.right) do |node|
			yield node
		end
	end
		
  	def find_node(val)
  		target_node = root
  		self.each do |node|
  			if node.value == val
  				target_node = node
  				return target_node
  			end
  		end
  	end

  	def minimum current = @root
		return current if current.left.nil?
		minimum current.left 
	end

	def maximum current = @root
		return current if current.right.nil?
		maximum current.right 
	end

	def delete current = @root, val                
		return current if current.nil?
		if val < current.value
			current.left = delete(current.left, val)
		elsif val > current.value
			current.right = delete(current.right, val)
		elsif !current.left.nil? and !current.right.nil?
			current.value = minimum(current.right).value
			current.right = delete(current.right, current.right.value)
		else
			if !current.left.nil?
	  			current = current.left
			else
	  			current = current.right
	  		end
	  	end
		return current
	end
end