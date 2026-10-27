.class public Landroid/app/Notification$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation


# static fields
.field private static final greylist-max-o KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final greylist-max-o KEY_MESSAGES:Ljava/lang/String; = "messages"

.field static final greylist-max-o KEY_ON_READ:Ljava/lang/String; = "on_read"

.field static final greylist-max-o KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final greylist-max-o KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field static final greylist-max-o KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final greylist-max-o KEY_TEXT:Ljava/lang/String; = "text"

.field private static final greylist-max-o KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final greylist-max-o mLatestTimestamp:J

.field private final greylist-max-o mMessages:[Ljava/lang/String;

.field private final greylist-max-o mParticipants:[Ljava/lang/String;

.field private final greylist-max-o mReadPendingIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mRemoteInput:Landroid/app/RemoteInput;

.field private final greylist-max-o mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor greylist-max-o <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .registers 8

    .line 15844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15845
    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 15846
    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    .line 15847
    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 15848
    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 15849
    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 15850
    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    .line 15851
    return-void
.end method

.method static greylist-max-o getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .registers 15

    .line 15930
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 15931
    return-object v0

    .line 15933
    :cond_4
    const-string/jumbo v1, "messages"

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 15935
    nop

    .line 15936
    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    .line 15937
    array-length v3, v1

    new-array v4, v3, [Ljava/lang/String;

    .line 15938
    nop

    .line 15939
    const/4 v5, 0x0

    move v6, v5

    :goto_19
    if-ge v6, v3, :cond_39

    .line 15940
    aget-object v7, v1, v6

    instance-of v7, v7, Landroid/os/Bundle;

    if-nez v7, :cond_23

    .line 15941
    nop

    .line 15942
    goto :goto_3a

    .line 15944
    :cond_23
    aget-object v7, v1, v6

    check-cast v7, Landroid/os/Bundle;

    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 15945
    aget-object v7, v4, v6

    if-nez v7, :cond_36

    .line 15946
    nop

    .line 15947
    goto :goto_3a

    .line 15939
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_39
    move v5, v2

    .line 15950
    :goto_3a
    if-eqz v5, :cond_3e

    .line 15951
    move-object v7, v4

    goto :goto_40

    .line 15953
    :cond_3e
    return-object v0

    .line 15936
    :cond_3f
    move-object v7, v0

    .line 15957
    :goto_40
    const-string/jumbo v1, "on_read"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/PendingIntent;

    .line 15958
    const-string/jumbo v1, "on_reply"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/PendingIntent;

    .line 15960
    const-string/jumbo v1, "remote_input"

    const-class v3, Landroid/app/RemoteInput;

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/RemoteInput;

    .line 15962
    const-string/jumbo v1, "participants"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 15963
    if-eqz v11, :cond_7e

    array-length v1, v11

    if-eq v1, v2, :cond_71

    goto :goto_7e

    .line 15967
    :cond_71
    new-instance v6, Landroid/app/Notification$CarExtender$UnreadConversation;

    .line 15971
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct/range {v6 .. v13}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    .line 15967
    return-object v6

    .line 15964
    :cond_7e
    :goto_7e
    return-object v0
.end method


# virtual methods
.method greylist-max-o getBundleForUnreadConversation()Landroid/os/Bundle;
    .registers 9

    .line 15906
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15907
    nop

    .line 15908
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_16

    .line 15909
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    aget-object v1, v1, v2

    goto :goto_17

    .line 15911
    :cond_16
    const/4 v1, 0x0

    :goto_17
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    array-length v3, v3

    new-array v4, v3, [Landroid/os/Parcelable;

    .line 15912
    nop

    :goto_1d
    if-ge v2, v3, :cond_38

    .line 15913
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 15914
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string/jumbo v7, "text"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15915
    const-string v6, "author"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15916
    aput-object v5, v4, v2

    .line 15912
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 15918
    :cond_38
    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 15919
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    if-eqz v1, :cond_4a

    .line 15920
    const-string/jumbo v1, "remote_input"

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15922
    :cond_4a
    const-string/jumbo v1, "on_reply"

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15923
    const-string/jumbo v1, "on_read"

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15924
    const-string/jumbo v1, "participants"

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15925
    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15926
    return-object v0
.end method

.method public whitelist getLatestTimestamp()J
    .registers 3

    .line 15902
    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public whitelist getMessages()[Ljava/lang/String;
    .registers 2

    .line 15857
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParticipant()Ljava/lang/String;
    .registers 3

    .line 15895
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getParticipants()[Ljava/lang/String;
    .registers 2

    .line 15888
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReadPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 15881
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getRemoteInput()Landroid/app/RemoteInput;
    .registers 2

    .line 15865
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getReplyPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 15873
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
