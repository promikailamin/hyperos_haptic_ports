.class public Lcom/android/server/audio/QcomAudioServiceStub$Singleton;
.super Ljava/lang/Object;
.source "QcomAudioServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/QcomAudioServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/server/audio/QcomAudioServiceStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/audio/QcomAudioServiceStub;
    .registers 1

    sget-object v0, Lcom/android/server/audio/QcomAudioServiceStub$Singleton;->sInstance:Lcom/android/server/audio/QcomAudioServiceStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/audio/QcomAudioServiceStub$Singleton;->sInstance:Lcom/android/server/audio/QcomAudioServiceStub;

    .line 13
    :try_start_3
    const-string v0, "com.android.server.audio.QcomAudioServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/QcomAudioServiceStub;

    sput-object v1, Lcom/android/server/audio/QcomAudioServiceStub$Singleton;->sInstance:Lcom/android/server/audio/QcomAudioServiceStub;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    .line 17
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1a

    .line 15
    :catch_12
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Util"

    const-string v2, "Failed to create service com.android.server.audio.QcomAudioServiceImpl"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
