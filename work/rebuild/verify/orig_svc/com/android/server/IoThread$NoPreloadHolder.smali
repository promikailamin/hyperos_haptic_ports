.class public abstract Lcom/android/server/IoThread$NoPreloadHolder;
.super Ljava/lang/Object;
.source "IoThread.java"


# static fields
.field public static final sInstance:Lcom/android/server/IoThread;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/IoThread;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/IoThread$NoPreloadHolder;->sInstance:Lcom/android/server/IoThread;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/android/server/IoThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/IoThread;-><init>(Lcom/android/server/IoThread-IA;)V

    sput-object v0, Lcom/android/server/IoThread$NoPreloadHolder;->sInstance:Lcom/android/server/IoThread;

    return-void
.end method
