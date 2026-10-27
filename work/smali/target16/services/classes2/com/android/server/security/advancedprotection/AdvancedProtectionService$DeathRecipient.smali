.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;
.super Ljava/lang/Object;
.source "AdvancedProtectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/IBinder;)V
    .registers 3

    .line 571
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 578
    :try_start_7
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method
