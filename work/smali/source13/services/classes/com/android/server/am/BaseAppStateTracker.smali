.class public abstract Lcom/android/server/am/BaseAppStateTracker;
.super Ljava/lang/Object;
.source "BaseAppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateTracker$Injector;,
        Lcom/android/server/am/BaseAppStateTracker$StateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStatePolicy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ONE_DAY:J = 0x5265c00L

.field static final ONE_HOUR:J = 0x36ee80L

.field static final ONE_MINUTE:J = 0xea60L

.field static final STATE_TYPE_FGS_LOCATION:I = 0x4

.field static final STATE_TYPE_FGS_MEDIA_PLAYBACK:I = 0x2

.field static final STATE_TYPE_FGS_WITH_NOTIFICATION:I = 0x8

.field static final STATE_TYPE_INDEX_FGS_LOCATION:I = 0x2

.field static final STATE_TYPE_INDEX_FGS_MEDIA_PLAYBACK:I = 0x1

.field static final STATE_TYPE_INDEX_FGS_WITH_NOTIFICATION:I = 0x3

.field static final STATE_TYPE_INDEX_MEDIA_SESSION:I = 0x0

.field static final STATE_TYPE_INDEX_PERMISSION:I = 0x4

.field static final STATE_TYPE_MEDIA_SESSION:I = 0x1

.field static final STATE_TYPE_NUM:I = 0x5

.field static final STATE_TYPE_PERMISSION:I = 0x10

.field protected static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field protected final mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field protected final mBgHandler:Landroid/os/Handler;

.field protected final mContext:Landroid/content/Context;

.field protected final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field protected final mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BaseAppStateTracker$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;
    .param p4, "outerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 92
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 94
    if-nez p3, :cond_24

    .line 95
    new-instance v0, Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    goto :goto_57

    .line 97
    :cond_24
    const/4 v0, 0x0

    .line 99
    .local v0, "localInjector":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    const/4 v1, 0x1

    :try_start_26
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTracker$Injector;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_33

    move-object v0, v1

    .line 102
    goto :goto_4c

    .line 100
    :catch_33
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4c
    if-nez v0, :cond_54

    new-instance v1, Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;-><init>()V

    goto :goto_55

    :cond_54
    move-object v1, v0

    :goto_55
    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 105
    .end local v0    # "localInjector":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    :goto_57
    return-void
.end method

.method static stateIndexToType(I)I
    .registers 2
    .param p0, "stateTypeIndex"    # I

    .line 112
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method static stateTypeToIndex(I)I
    .registers 2
    .param p0, "stateType"    # I

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    return v0
.end method

.method static stateTypesToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "stateTypes"    # I

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 118
    .local v1, "needDelimiter":Z
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .local v2, "stateType":I
    :goto_c
    if-eqz v2, :cond_5c

    .line 120
    if-eqz v1, :cond_15

    .line 121
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :cond_15
    const/4 v1, 0x1

    .line 124
    sparse-switch v2, :sswitch_data_66

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UNKNOWN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 138
    :sswitch_37
    const-string v3, "PERMISSION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_55

    .line 135
    :sswitch_3d
    const-string v3, "FGS_NOTIFICATION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    goto :goto_55

    .line 132
    :sswitch_43
    const-string v3, "FGS_LOCATION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    goto :goto_55

    .line 129
    :sswitch_49
    const-string v3, "FGS_MEDIA_PLAYBACK"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    goto :goto_55

    .line 126
    :sswitch_4f
    const-string v3, "MEDIA_SESSION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    nop

    .line 143
    :goto_55
    not-int v3, v2

    and-int/2addr p0, v3

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    goto :goto_c

    .line 145
    .end local v2    # "stateType":I
    :cond_5c
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_4f
        0x2 -> :sswitch_49
        0x4 -> :sswitch_43
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_37
    .end sparse-switch
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 272
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "uid"    # I

    .line 276
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method getPolicy()Lcom/android/server/am/BaseAppStatePolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    return-object v0
.end method

.method getTrackerInfoForStatsd(I)[B
    .registers 3
    .param p1, "uid"    # I

    .line 175
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getType()I
    .registers 2

    .line 168
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method notifyListenersOnStateChange(ILjava/lang/String;ZJI)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "start"    # Z
    .param p4, "now"    # J
    .param p6, "stateType"    # I

    .line 157
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_b
    if-ge v0, v3, :cond_23

    .line 159
    iget-object v4, v1, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/am/BaseAppStateTracker$StateListener;

    move v6, p1

    move-object v7, p2

    move v8, p3

    move-wide/from16 v9, p4

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lcom/android/server/am/BaseAppStateTracker$StateListener;->onStateChange(ILjava/lang/String;ZJI)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 161
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_23
    monitor-exit v2

    .line 162
    return-void

    .line 161
    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v0
.end method

.method onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 252
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onLockedBootCompleted()V
    .registers 1

    .line 232
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onPropertiesChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 239
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 189
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->onSystemReady()V

    .line 190
    return-void
.end method

.method onUidAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 196
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUidGone(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 266
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUidProcStateChanged(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 260
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUidRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 202
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUserAdded(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 208
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 246
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 226
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUserStarted(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 214
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method onUserStopped(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 220
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    return-void
.end method

.method registerStateListener(Lcom/android/server/am/BaseAppStateTracker$StateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/am/BaseAppStateTracker$StateListener;

    .line 150
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker;, "Lcom/android/server/am/BaseAppStateTracker<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
