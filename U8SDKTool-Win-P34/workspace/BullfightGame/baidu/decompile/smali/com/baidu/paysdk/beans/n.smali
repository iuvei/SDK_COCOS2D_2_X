.class public Lcom/baidu/paysdk/beans/n;
.super Lcom/baidu/wallet/core/beans/BaseBean;


# instance fields
.field private a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private c:Lcom/baidu/paysdk/datamodel/PwdRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/n;->c:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/n;->c:Lcom/baidu/paysdk/datamodel/PwdRequest;

    return-void
.end method


# virtual methods
.method public execBean()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->execBean(Ljava/lang/Class;)V

    return-void
.end method

.method public generateRequestParam()Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "card_no"

    const-string v3, "card_no"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankCard()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "card_no_bind"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "true_name"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "identity_type"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "identity_code"

    const-string v3, "identity_code"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmIdCard()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "phone_number"

    const-string v3, "phone_number"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "vcode"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSmsVCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/paysdk/beans/n;->c:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwdSimple(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getSeed()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/beans/n;->c:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/android/pay/SafePay;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobile_pass"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mobile_pass_confirm"

    invoke-direct {v1, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mobile_pwd_psp"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/n;->c:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwdForPassport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/android/pay/SafePay;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "seed"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "key"

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/android/pay/SafePay;->getpw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "valid_date"

    const-string v3, "valid_date"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmValidDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cvv2"

    const-string v3, "cvv2"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmCvv()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getChannelNo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12b

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "channel_no"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12b
    iget-object v1, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getSubBankCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_147

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sub_bank_code"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/n;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getSubBankCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_147
    return-object v0
.end method

.method public getBeanId()I
    .registers 2

    const/16 v0, 0x104

    return v0
.end method

.method public getEncode()Ljava/lang/String;
    .registers 2

    const-string v0, "gbk"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/paysdk/beans/n;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/DebugConfig;->getWalletHttpHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/_u/wireless/reset_pass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method