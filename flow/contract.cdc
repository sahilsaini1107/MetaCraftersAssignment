    pub contract Staking {

// A dictionary of assets
    pub var assets: {Address: Asset}

// Initialize an empty dictionary.
    init() {
        self.assets = {}
        }

    pub struct Asset  {
        pub var account: Address
        pub var DateOfCreation: UInt
        pub var DateOfUnlock: UInt
        pub var per: UInt 
        pub var amountStaked: UInt
        pub var amountInterest: UInt 
        pub var isOpen: Bool


    init(_account: Address, _DateOfCreation: UInt,  _DateOfUnlock: UInt, _per: UInt, 
            _amountStaked: UInt, _amountInterest: UInt, _isOpen: Bool ) {
        self.account = _account
        self.DateOfCreation = _DateOfCreation
        self.DateOfUnlock = _DateOfUnlock
        self.per = _per
        self.amountStaked = _amountStaked
        self.amountInterest = _amountInterest
        self.isOpen = _isOpen
    }
}

    pub fun stakeToken (account: Address, DateOfCreation: UInt,  _DateOfUnlock: UInt, percent: UInt, 
                        amountStaked: UInt, amountInterest: UInt) {
        let newStakedAsset = 
                        Asset( _account: account, _DateOfCreation: DateOfCreation,  _DateOfUnlock:DateOfUnlock, _percent: percent, 
                         _amountStaked: amountStaked, _amountInterest: amountInterest, _isOpen: true)
        self.assets[account] =  newStakedAsset

    }
}