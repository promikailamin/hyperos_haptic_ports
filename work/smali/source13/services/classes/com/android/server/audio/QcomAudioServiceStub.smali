.class public interface abstract Lcom/android/server/audio/QcomAudioServiceStub;
.super Ljava/lang/Object;
.source "QcomAudioServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/QcomAudioServiceStub$Singleton;
    }
.end annotation


# static fields
.field public static final IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.server.audio.QcomAudioServiceImpl"


# direct methods
.method public static get()Lcom/android/server/audio/QcomAudioServiceStub;
    .registers 1

    .line 22
    invoke-static {}, Lcom/android/server/audio/QcomAudioServiceStub$Singleton;->-$$Nest$sfgetsInstance()Lcom/android/server/audio/QcomAudioServiceStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cacheHdrParameters(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public restoreHdrParam()V
    .registers 1

    .line 31
    return-void
.end method

.method public saveHdrParam()V
    .registers 1

    .line 27
    return-void
.end method
