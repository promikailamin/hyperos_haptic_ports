.class Landroid/media/AudioServiceInjector$1;
.super Ljava/util/HashMap;
.source "AudioServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "content://settings/system/notification_sound"

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioServiceInjector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "content://settings/system/sms_received_sound"

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioServiceInjector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "content://settings/system/sms_received_sound_slot_1"

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioServiceInjector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "content://settings/system/sms_received_sound_slot_2"

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioServiceInjector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "content://settings/system/calendar_alert"

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioServiceInjector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "content://settings/system/notes_alert"

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioServiceInjector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
