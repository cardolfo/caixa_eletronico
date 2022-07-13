class Strategy
    def transact(_data)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end