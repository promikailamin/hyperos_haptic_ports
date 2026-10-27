.class public Landroid/accounts/AccountAndUser;
.super Ljava/lang/Object;
.source "AccountAndUser.java"


# instance fields
.field public greylist account:Landroid/accounts/Account;

.field public greylist userId:I


# direct methods
.method public constructor greylist <init>(Landroid/accounts/Account;I)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 36
    iput p2, p0, Landroid/accounts/AccountAndUser;->userId:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 40
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 41
    :cond_4
    instance-of v1, p1, Landroid/accounts/AccountAndUser;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 42
    :cond_a
    check-cast p1, Landroid/accounts/AccountAndUser;

    .line 43
    iget-object v1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, p1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    iget p1, p1, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v1, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 49
    iget-object v0, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
