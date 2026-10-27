.class Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;
.super Lcom/android/server/utils/Watcher;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$StorageWatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 595
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monChange(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 596
    return-void
.end method
