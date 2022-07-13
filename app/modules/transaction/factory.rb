module Transaction
    class Factory
        def self.create_context(transaction)
            when transaction.transaction_type
                case :deposit
                    @transaction_strategy = Transaction::DepositTransactionStrategy.new(transaction)                    
                end
                case :transfer
                    @transaction_strategy = Transaction::TransferTransactionStrategy.new(transaction)
                end
                case :withdrawal
                    @transaction_strategy = Transaction::WithdrawalTransactionStrategy.new(transaction)
                end
            end
            Transaction::TransactionContext.new(transaction_strategy)
        end
    end
end