.class Landroid/telephony/TelephonyManager$2;
.super Ljava/lang/Object;
.source "TelephonyManager.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$1$android-telephony-TelephonyManager(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/os/ParcelUuid;",
        "Landroid/telephony/TelephonyManager$CallComposerException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$fileStream:Ljava/io/InputStream;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 4814
    iput-object p1, p0, Landroid/telephony/TelephonyManager$2;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/TelephonyManager$CallComposerException;)V
    .registers 5
    .param p1, "error"    # Landroid/telephony/TelephonyManager$CallComposerException;

    .line 4830
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4835
    goto :goto_e

    .line 4831
    :catch_6
    move-exception v0

    .line 4833
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error closing file input stream when uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4837
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 4814
    check-cast p1, Landroid/telephony/TelephonyManager$CallComposerException;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onError(Landroid/telephony/TelephonyManager$CallComposerException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "result"    # Landroid/os/ParcelUuid;

    .line 4818
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4823
    goto :goto_e

    .line 4819
    :catch_6
    move-exception v0

    .line 4821
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error closing file input stream when uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 4825
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2

    .line 4814
    check-cast p1, Landroid/os/ParcelUuid;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onResult(Landroid/os/ParcelUuid;)V

    return-void
.end method
