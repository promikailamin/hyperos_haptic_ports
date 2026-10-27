.class public final Lcom/android/server/LocalServices;
.super Ljava/lang/Object;
.source "LocalServices.java"


# static fields
.field private static final blacklist sLocalServiceObjects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addService(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 60
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 58
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Overriding service registration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static blacklist getService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 49
    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static blacklist removeAllServicesForTest()V
    .registers 2

    .line 79
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist removeServiceForTest(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
