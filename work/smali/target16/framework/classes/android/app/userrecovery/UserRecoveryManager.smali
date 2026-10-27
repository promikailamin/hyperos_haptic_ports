.class public final Landroid/app/userrecovery/UserRecoveryManager;
.super Ljava/lang/Object;
.source "UserRecoveryManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/userrecovery/IUserRecoveryManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/userrecovery/IUserRecoveryManager;Landroid/content/Context;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/app/userrecovery/UserRecoveryManager;->mService:Landroid/app/userrecovery/IUserRecoveryManager;

    .line 45
    iput-object p2, p0, Landroid/app/userrecovery/UserRecoveryManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method
