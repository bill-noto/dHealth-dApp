<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png"/>
    <br />
    <button class="primaryButton" @click="connectWallet">Connect Wallet</button>
  </div>
</template>

<script>

export default {
  name: 'HomeView',
  data() {
    return {
      currentAccount: null,
      contractAddress:
          "0x4bC6836a35e0C22579c89B5e31e0eaB2645a516b",
    };
  },
  methods: {
    checkIfWalletIsConnected: async function() {
      try {
        const { ethereum } = window;
        if (!ethereum) {
          alert("Make sure you have the Metamask browser plugin!");
          return;
        } else {
          console.log("We have the ethereum object", ethereum);
        }
        const accounts = await ethereum.request({ method: "eth_accounts" });
        if (accounts.length !== 0) {
          const account = accounts[0];
          console.log("Found an authorized account:", account);
          this.currentAccount = account;
        } else {
          console.log("No authorized account found");
        }
      } catch (error) {
        console.log(error);
      }
    },
    connectWallet: async function() {
      try {
        const { ethereum } = window;
        if (!ethereum) {
          alert("Get MetaMask!");
          return;
        }
        const accounts = await ethereum.request({
          method: "eth_requestAccounts",
        });
        console.log("Connected", accounts[0]);
        this.currentAccount = accounts[0];
      } catch (error) {
        console.log(error);
      }
    },
  },
  mounted() {
    this.checkIfWalletIsConnected();
  }
};
</script>

<style lang="scss">
.home {
  .primaryButton {
    background: rgb(40, 36, 240);
    border: none;
    color: white;
    padding: 15px 25px;
    font-size: 1.1rem;
    border-radius: 7px;
    cursor: pointer;
  }
}
</style>
