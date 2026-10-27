.class final Lcom/android/server/trust/TrustManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

.field private final TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mIsAutomotive:Z

.field private mLockWhenTrustLost:Z

.field private mTrustAgentsNonrenewableTrust:Z

.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V
    .registers 5
    .param p2, "handler"    # Landroid/os/Handler;

    .line 287
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 288
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 271
    nop

    .line 272
    const-string/jumbo v0, "trust_agents_extend_unlock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    .line 274
    nop

    .line 275
    const-string v0, "lock_screen_when_trust_lost"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    .line 290
    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 291
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    .line 293
    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 294
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    .line 295
    return-void
.end method


# virtual methods
.method getLockWhenTrustLost()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    return v0
.end method

.method getTrustAgentsNonrenewableTrust()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsNonrenewableTrust:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 315
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 318
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    xor-int/2addr v0, v1

    .line 320
    .local v0, "defaultValue":I
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v4

    .line 321
    const-string/jumbo v5, "trust_agents_extend_unlock"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsNonrenewableTrust:Z

    .end local v0    # "defaultValue":I
    goto :goto_40

    .line 326
    :cond_23
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 327
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v3

    .line 328
    const-string v4, "lock_screen_when_trust_lost"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    goto :goto_41

    .line 326
    :cond_40
    :goto_40
    nop

    .line 334
    :goto_41
    return-void
.end method

.method updateContentObserver()V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 309
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 311
    return-void
.end method
