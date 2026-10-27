.class public Landroid/hardware/camera2/marshal/MarshalRegistry;
.super Ljava/lang/Object;
.source "MarshalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;
    }
.end annotation


# static fields
.field private static final blacklist sMarshalLock:Ljava/lang/Object;

.field private static final blacklist sMarshalerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<",
            "*>;",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist sRegisteredMarshalQueryables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static blacklist getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;-><init>(Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 69
    sget-object v2, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/marshal/Marshaler;

    .line 72
    if-nez v2, :cond_70

    .line 74
    sget-object v3, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_68

    .line 79
    sget-object v3, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/marshal/MarshalQueryable;

    .line 81
    nop

    .line 84
    invoke-interface {v4, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 85
    invoke-interface {v4, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v2

    .line 86
    goto :goto_39

    .line 88
    :cond_38
    goto :goto_20

    .line 90
    :cond_39
    :goto_39
    if-eqz v2, :cond_41

    .line 99
    sget-object p0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 91
    :cond_41
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find marshaler that matches the requested combination of type reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " and native type "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 95
    invoke-static {p1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->toStringNativeType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_68
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "No available query marshalers registered"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 102
    :cond_70
    :goto_70
    monitor-exit v0

    return-object v2

    .line 103
    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public static blacklist registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    sget-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 43
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
