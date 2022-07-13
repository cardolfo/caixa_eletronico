module Transaction
    class Context
        
        attr_writer :strategy
        
        def initialize(strategy)
            @strategy = strategy
        end
        
        def strategy=(strategy)
            @strategy = strategy
        end

        def transact            
            result = @strategy.transact
        end
    end
end