.class public final Landroid/provider/ContactsContract$SimContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimContacts"
.end annotation


# static fields
.field public static final whitelist ACTION_SIM_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.provider.action.SIM_ACCOUNTS_CHANGED"

.field public static final blacklist ADD_SIM_ACCOUNT_METHOD:Ljava/lang/String; = "addSimAccount"

.field public static final blacklist KEY_ACCOUNT_NAME:Ljava/lang/String; = "key_sim_account_name"

.field public static final blacklist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "key_sim_account_type"

.field public static final blacklist KEY_SIM_ACCOUNTS:Ljava/lang/String; = "key_sim_accounts"

.field public static final blacklist KEY_SIM_EF_TYPE:Ljava/lang/String; = "key_sim_ef_type"

.field public static final blacklist KEY_SIM_SLOT_INDEX:Ljava/lang/String; = "key_sim_slot_index"

.field public static final blacklist QUERY_SIM_ACCOUNTS_METHOD:Ljava/lang/String; = "querySimAccounts"

.field public static final blacklist REMOVE_SIM_ACCOUNT_METHOD:Ljava/lang/String; = "removeSimAccount"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 8877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8878
    return-void
.end method

.method public static whitelist addSimAccount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8963
    if-ltz p3, :cond_52

    .line 8966
    invoke-static {}, Landroid/provider/ContactsContract$SimAccount;->getValidEfTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 8969
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 8973
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8974
    const-string/jumbo v1, "key_sim_slot_index"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8975
    const-string/jumbo p3, "key_sim_ef_type"

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8976
    const-string/jumbo p3, "key_sim_account_name"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8977
    const-string/jumbo p1, "key_sim_account_type"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8979
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string p2, "addSimAccount"

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8982
    return-void

    .line 8970
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account name or type is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8967
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid EF type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8964
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sim slot is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getSimAccounts(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/ContactsContract$SimAccount;",
            ">;"
        }
    .end annotation

    .line 9014
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "querySimAccounts"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 9017
    const-string/jumbo v0, "key_sim_accounts"

    const-class v1, Landroid/provider/ContactsContract$SimAccount;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 9019
    if-nez p0, :cond_1a

    .line 9020
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9023
    :cond_1a
    return-object p0
.end method

.method public static whitelist removeSimAccounts(Landroid/content/ContentResolver;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8995
    if-ltz p1, :cond_17

    .line 8999
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9000
    const-string/jumbo v1, "key_sim_slot_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9002
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "removeSimAccount"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9005
    return-void

    .line 8996
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sim slot is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
