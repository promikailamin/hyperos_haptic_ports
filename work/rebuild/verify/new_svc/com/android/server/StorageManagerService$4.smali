.class public Lcom/android/server/StorageManagerService$4;
.super Lcom/android/server/utils/Watcher;
.source "StorageManagerService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 1999
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 2003
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method
