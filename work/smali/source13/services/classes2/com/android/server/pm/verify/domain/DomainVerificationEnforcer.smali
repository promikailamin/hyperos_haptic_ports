.class public Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;
.super Ljava/lang/Object;
.source "DomainVerificationEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "proxy"    # Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 66
    sparse-switch p1, :sswitch_data_56

    .line 72
    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    move-result v0

    const-string v1, "Caller "

    if-nez v0, :cond_2f

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not allowed to query domain verification state"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 77
    goto :goto_55

    .line 70
    :sswitch_2e
    goto :goto_55

    .line 80
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not hold "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 86
    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_2e
        0x3e8 -> :sswitch_2e
        0x7d0 -> :sswitch_2e
    .end sparse-switch
.end method

.method public assertApprovedUserSelector(IILjava/lang/String;I)Z
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 158
    if-eq p2, p4, :cond_f

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 159
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Caller is not allowed to edit other users"

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 165
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 165
    const-string v2, "android.permission.UPDATE_DOMAIN_VERIFICATION_USER_SELECTION"

    const-string v3, "Caller is not allowed to edit user selections"

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    const-string v1, " does not exist"

    const-string v2, "User "

    if-eqz v0, :cond_57

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 176
    const/4 v0, 0x1

    if-nez p3, :cond_34

    .line 177
    return v0

    .line 180
    :cond_34
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v1, p3, p1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 173
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_57
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertApprovedUserStateQuerent(IILjava/lang/String;I)Z
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 137
    if-eq p2, p4, :cond_f

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 138
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Caller is not allowed to edit other users"

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 144
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    const-string v1, " does not exist"

    const-string v2, "User "

    if-eqz v0, :cond_47

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p3, p1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 147
    :cond_2c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "proxy"    # Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 94
    const-string v0, "Caller "

    sparse-switch p1, :sswitch_data_90

    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 102
    .local v1, "callingPid":I
    const/4 v2, 0x0

    .line 103
    .local v2, "isLegacyVerificationAgent":Z
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DOMAIN_VERIFICATION_AGENT"

    invoke-virtual {v3, v4, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const-string v5, " does not hold "

    if-eqz v3, :cond_48

    .line 106
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    invoke-virtual {v3, v6, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    .line 98
    .end local v1    # "callingPid":I
    .end local v2    # "isLegacyVerificationAgent":Z
    :sswitch_22
    const/4 v1, 0x1

    .line 99
    .local v1, "isAllowed":Z
    goto :goto_6f

    .line 106
    .local v1, "callingPid":I
    .restart local v2    # "isLegacyVerificationAgent":Z
    :cond_24
    const/4 v3, 0x0

    :goto_25
    move v2, v3

    .line 109
    if-eqz v2, :cond_29

    goto :goto_48

    .line 110
    :cond_29
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_48
    :goto_48
    if-nez v2, :cond_6a

    .line 117
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v1, p1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 122
    :cond_6a
    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    move-result v3

    move v1, v3

    .line 126
    .end local v2    # "isLegacyVerificationAgent":Z
    .local v1, "isAllowed":Z
    :goto_6f
    if-eqz v1, :cond_72

    .line 130
    return-void

    .line 127
    :cond_72
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not the approved domain verification agent"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_90
    .sparse-switch
        0x0 -> :sswitch_22
        0x3e8 -> :sswitch_22
        0x7d0 -> :sswitch_22
    .end sparse-switch
.end method

.method public assertInternal(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .line 50
    sparse-switch p1, :sswitch_data_24

    .line 56
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to change internal state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :sswitch_22
    nop

    .line 59
    return-void

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_22
        0x3e8 -> :sswitch_22
        0x7d0 -> :sswitch_22
    .end sparse-switch
.end method

.method public assertOwnerQuerent(III)V
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "targetUserId"    # I

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 236
    .local v0, "callingPid":I
    if-eq p2, p3, :cond_f

    .line 237
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Caller is not allowed to query other users"

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 241
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not hold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DOMAIN_VERIFICATION_USER_SELECTION"

    const-string v3, "Caller is not allowed to query user selections"

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v1

    const-string v2, " does not exist"

    const-string v3, "User "

    if-eqz v1, :cond_6c

    .line 251
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 254
    return-void

    .line 252
    :cond_51
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_6c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public callerIsLegacyUserQuerent(IILjava/lang/String;I)Z
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 210
    if-eq p2, p4, :cond_f

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 212
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Caller is not allowed to edit other users"

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 218
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    const-string v1, " does not exist"

    const-string v2, "User "

    if-eqz v0, :cond_47

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p3, p1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 221
    :cond_2c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callerIsLegacyUserSelector(IILjava/lang/String;I)Z
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 185
    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v3, "Caller is not allowed to edit user state"

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 190
    if-eq p2, p4, :cond_1f

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 191
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 195
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_1f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    const-string v1, " does not exist"

    const-string v2, "User "

    if-eqz v0, :cond_57

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->doesUserExist(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    invoke-interface {v0, p3, p1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 202
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_57
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    .line 43
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;

    .line 44
    return-void
.end method
