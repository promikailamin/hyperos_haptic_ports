.class public abstract Lcom/android/server/PermissionThread$NoPreloadHolder;
.super Ljava/lang/Object;
.source "PermissionThread.java"


# static fields
.field public static final sInstance:Lcom/android/server/PermissionThread;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/PermissionThread;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/PermissionThread$NoPreloadHolder;->sInstance:Lcom/android/server/PermissionThread;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/android/server/PermissionThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/PermissionThread;-><init>(Lcom/android/server/PermissionThread-IA;)V

    sput-object v0, Lcom/android/server/PermissionThread$NoPreloadHolder;->sInstance:Lcom/android/server/PermissionThread;

    return-void
.end method
