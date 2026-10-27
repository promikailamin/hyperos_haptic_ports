.class public Lcom/android/server/MmsServiceBroker$3;
.super Ljava/lang/Object;
.source "MmsServiceBroker.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# instance fields
.field public final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMultimediaMessageDraft(ILjava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public downloadMessage(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .registers 11

    .line 145
    invoke-virtual {p0, p7}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getAutoPersisting()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public importMultimediaMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .registers 9

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .registers 9

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final returnPendingIntentWithError(Landroid/app/PendingIntent;)V
    .registers 4

    .line 215
    :try_start_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$fgetmContext(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 217
    const-string p1, "MmsServiceBroker"

    const-string v0, "Failed to return pending intent result"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public sendMessage(IILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .registers 11

    .line 137
    invoke-virtual {p0, p7}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 6

    .line 200
    invoke-virtual {p0, p5}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method
