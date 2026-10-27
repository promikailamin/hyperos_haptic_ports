.class final Lcom/android/server/FgThread$NoPreloadHolder;
.super Ljava/lang/Object;
.source "FgThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FgThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final blacklist sInstance:Lcom/android/server/FgThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Lcom/android/server/FgThread;
    .registers 1

    sget-object v0, Lcom/android/server/FgThread$NoPreloadHolder;->sInstance:Lcom/android/server/FgThread;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/android/server/FgThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/FgThread;-><init>(Lcom/android/server/FgThread-IA;)V

    sput-object v0, Lcom/android/server/FgThread$NoPreloadHolder;->sInstance:Lcom/android/server/FgThread;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
