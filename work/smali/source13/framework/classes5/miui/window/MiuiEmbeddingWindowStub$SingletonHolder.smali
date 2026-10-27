.class public final Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/window/MiuiEmbeddingWindowStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lmiui/window/MiuiEmbeddingWindowStub;

.field private static final blacklist STUB_IMPL:Ljava/lang/String; = "com.miui.window.MiuiEmbeddingWindow"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lmiui/window/MiuiEmbeddingWindowStub;
    .registers 1

    sget-object v0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->INSTANCE:Lmiui/window/MiuiEmbeddingWindowStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->getStub()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    sput-object v0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->INSTANCE:Lmiui/window/MiuiEmbeddingWindowStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getStub()Lmiui/window/MiuiEmbeddingWindowStub;
    .registers 6

    .line 51
    :try_start_0
    sget-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->ENABLED:Z

    if-eqz v0, :cond_31

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 52
    const-string v0, "MiuiEmbeddingWindowStub"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 54
    .local v0, "at":Landroid/app/ActivityThread;
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v4, "/system_ext/framework/androidx.window.extensions.jar"

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getBaseClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 55
    .local v3, "cl":Ljava/lang/ClassLoader;
    const-string v4, "com.miui.window.MiuiEmbeddingWindow"

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/window/MiuiEmbeddingWindowStub;

    .line 56
    .local v4, "stub":Lmiui/window/MiuiEmbeddingWindowStub;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_30} :catch_32
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_30} :catch_32
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_30} :catch_32

    .line 57
    return-object v4

    .line 64
    .end local v0    # "at":Landroid/app/ActivityThread;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "stub":Lmiui/window/MiuiEmbeddingWindowStub;
    :cond_31
    goto :goto_33

    .line 59
    :catch_32
    move-exception v0

    .line 65
    :goto_33
    new-instance v0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;

    invoke-direct {v0}, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;-><init>()V

    return-object v0
.end method
