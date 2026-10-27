.class public final Landroid/provider/ContactsContract$RawContacts$DefaultAccount;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAccount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist ACTION_MOVE_CONTACTS_TO_DEFAULT_ACCOUNT:Ljava/lang/String; = "android.provider.action.MOVE_CONTACTS_TO_DEFAULT_ACCOUNT"

.field public static final blacklist GET_NUMBER_OF_MOVABLE_LOCAL_CONTACTS_METHOD:Ljava/lang/String; = "getNumberOfMovableLocalContacts"

.field public static final blacklist GET_NUMBER_OF_MOVABLE_SIM_CONTACTS_METHOD:Ljava/lang/String; = "getNumberOfMovableSimContacts"

.field public static final blacklist KEY_DEFAULT_ACCOUNT_STATE:Ljava/lang/String; = "key_default_account_state"

.field public static final blacklist KEY_ELIGIBLE_DEFAULT_ACCOUNTS:Ljava/lang/String; = "key_eligible_default_accounts"

.field public static final blacklist KEY_NUMBER_OF_MOVABLE_LOCAL_CONTACTS:Ljava/lang/String; = "key_number_of_movable_local_contacts"

.field public static final blacklist KEY_NUMBER_OF_MOVABLE_SIM_CONTACTS:Ljava/lang/String; = "key_number_of_movable_sim_contacts"

.field public static final blacklist MOVE_LOCAL_CONTACTS_TO_CLOUD_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "moveLocalContactsToCloudDefaultAccount"

.field public static final blacklist MOVE_SIM_CONTACTS_TO_CLOUD_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "moveSimContactsToCloudDefaultAccount"

.field public static final blacklist QUERY_DEFAULT_ACCOUNT_FOR_NEW_CONTACTS_METHOD:Ljava/lang/String; = "queryDefaultAccountForNewContacts"

.field public static final blacklist QUERY_ELIGIBLE_DEFAULT_ACCOUNTS_METHOD:Ljava/lang/String; = "queryEligibleDefaultAccounts"

.field public static final blacklist SET_DEFAULT_ACCOUNT_FOR_NEW_CONTACTS_METHOD:Ljava/lang/String; = "setDefaultAccountForNewContacts"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3027
    const-class v0, Landroid/provider/ContactsContract;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 3032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3034
    return-void
.end method

.method public static whitelist getDefaultAccountForNewContacts(Landroid/content/ContentResolver;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 6

    .line 3298
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "queryDefaultAccountForNewContacts"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 3301
    const-string/jumbo v0, "key_default_account_state"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3302
    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3303
    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3304
    const-string v3, "account_type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3305
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 3309
    new-instance v3, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v1, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v0, v4, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;Landroid/provider/ContactsContract-IA;)V

    return-object v3

    .line 3306
    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "account name and type cannot be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3311
    :cond_43
    const/4 p0, 0x2

    if-eq v0, p0, :cond_52

    const/4 p0, 0x1

    if-ne v0, p0, :cond_4a

    goto :goto_52

    .line 3317
    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid default account state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3314
    :cond_52
    :goto_52
    new-instance p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    invoke-direct {p0, v0, v2, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;Landroid/provider/ContactsContract-IA;)V

    return-object p0
.end method

.method public static whitelist getEligibleCloudAccounts(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 3386
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "queryEligibleDefaultAccounts"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 3388
    const-string/jumbo v0, "key_eligible_default_accounts"

    const-class v1, Landroid/accounts/Account;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3390
    if-nez p0, :cond_1b

    .line 3391
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3393
    :cond_1b
    return-object p0
.end method

.method public static whitelist getNumberOfMovableLocalContacts(Landroid/content/ContentResolver;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3496
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "getNumberOfMovableLocalContacts"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 3502
    const-string/jumbo v0, "key_number_of_movable_local_contacts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static whitelist getNumberOfMovableSimContacts(Landroid/content/ContentResolver;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3540
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "getNumberOfMovableSimContacts"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 3546
    const-string/jumbo v0, "key_number_of_movable_sim_contacts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static whitelist moveLocalContactsToCloudDefaultAccount(Landroid/content/ContentResolver;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3423
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "moveLocalContactsToCloudDefaultAccount"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3429
    return-void
.end method

.method public static whitelist moveSimContactsToCloudDefaultAccount(Landroid/content/ContentResolver;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3454
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "moveSimContactsToCloudDefaultAccount"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3460
    return-void
.end method

.method public static whitelist setDefaultAccountForNewContacts(Landroid/content/ContentResolver;Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3356
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3358
    const-string/jumbo v1, "key_default_account_state"

    invoke-virtual {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3359
    invoke-virtual {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3360
    invoke-virtual {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 3361
    nop

    .line 3362
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    const-string v1, "account_type"

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    :cond_2c
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "setDefaultAccountForNewContacts"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3367
    return-void
.end method
