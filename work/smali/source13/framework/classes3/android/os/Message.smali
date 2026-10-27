.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final greylist-max-o FLAG_ASYNCHRONOUS:I = 0x2

.field static final greylist-max-o FLAG_IN_USE:I = 0x1

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x32

.field public static final blacklist UID_NONE:I = -0x1

.field private static greylist-max-o gCheckRecycle:Z

.field private static greylist-max-o sPool:Landroid/os/Message;

.field private static greylist-max-o sPoolSize:I

.field public static final greylist-max-o sPoolSync:Ljava/lang/Object;


# instance fields
.field public whitelist arg1:I

.field public whitelist arg2:I

.field greylist callback:Ljava/lang/Runnable;

.field greylist-max-o data:Landroid/os/Bundle;

.field greylist flags:I

.field blacklist monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

.field greylist next:Landroid/os/Message;

.field public whitelist obj:Ljava/lang/Object;

.field public whitelist replyTo:Landroid/os/Messenger;

.field public whitelist sendingUid:I

.field greylist target:Landroid/os/Handler;

.field public whitelist what:I

.field public greylist when:J

.field public blacklist workSourceUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/os/Message;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 621
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 99
    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 157
    invoke-static {}, Landroid/os/perfdebug/MessageMonitor;->newMessageMonitorInfo()Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    .line 542
    return-void
.end method

.method public static whitelist obtain()Landroid/os/Message;
    .registers 3

    .line 164
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_1a

    .line 166
    nop

    .line 167
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v2, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 168
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 169
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->flags:I

    .line 170
    sget v2, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 171
    monitor-exit v0

    return-object v1

    .line 173
    .end local v1    # "m":Landroid/os/Message;
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 174
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0

    .line 173
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static whitelist obtain(Landroid/os/Handler;)Landroid/os/Message;
    .registers 2
    .param p0, "h"    # Landroid/os/Handler;

    .line 207
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 210
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 238
    iput p1, v0, Landroid/os/Message;->what:I

    .line 240
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .registers 5
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 271
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 273
    iput p1, v0, Landroid/os/Message;->what:I

    .line 274
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 275
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 277
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 295
    iput p1, v0, Landroid/os/Message;->what:I

    .line 296
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 297
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 298
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 252
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 254
    iput p1, v0, Landroid/os/Message;->what:I

    .line 255
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 221
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 222
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 223
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 225
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p0, "orig"    # Landroid/os/Message;

    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "m":Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 187
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 188
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 190
    iget v1, p0, Landroid/os/Message;->sendingUid:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 191
    iget v1, p0, Landroid/os/Message;->workSourceUid:I

    iput v1, v0, Landroid/os/Message;->workSourceUid:I

    .line 192
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_2d

    .line 193
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 195
    :cond_2d
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 196
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 198
    return-object v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 676
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 678
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 680
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 683
    return-void
.end method

.method public static greylist-max-o updateCheckRecycle(I)V
    .registers 2
    .param p0, "targetSdkVersion"    # I

    .line 305
    const/16 v0, 0x15

    if-ge p0, v0, :cond_7

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 308
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist copyFrom(Landroid/os/Message;)V
    .registers 3
    .param p1, "o"    # Landroid/os/Message;

    .line 368
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 370
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 371
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 372
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 374
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 375
    iget v0, p1, Landroid/os/Message;->workSourceUid:I

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 377
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_2f

    .line 378
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_32

    .line 380
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 382
    :goto_32
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 591
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 592
    .local v0, "messageToken":J
    iget-wide v2, p0, Landroid/os/Message;->when:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 594
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_6c

    .line 595
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_27

    .line 596
    const-wide v3, 0x10900000002L

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_31

    .line 598
    :cond_27
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 601
    :goto_31
    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3d

    .line 602
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 605
    :cond_3d
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_49

    .line 606
    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 609
    :cond_49
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_59

    .line 610
    const-wide v3, 0x10900000006L

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 613
    :cond_59
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_76

    .line 615
    :cond_6c
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 618
    :goto_76
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 619
    return-void
.end method

.method public whitelist getCallback()Ljava/lang/Runnable;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 442
    :cond_b
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTarget()Landroid/os/Handler;
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getWhen()J
    .registers 3

    .line 388
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public whitelist isAsynchronous()Z
    .registers 2

    .line 493
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o isInUse()Z
    .registers 3

    .line 531
    iget v0, p0, Landroid/os/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method greylist markInUse()V
    .registers 2

    .line 536
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 537
    return-void
.end method

.method public whitelist peekData()Landroid/os/Bundle;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist recycle()V
    .registers 3

    .line 319
    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 320
    sget-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    if-nez v0, :cond_b

    .line 324
    return-void

    .line 321
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This message cannot be recycled because it is still in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_13
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    .line 327
    return-void
.end method

.method greylist recycleUnchecked()V
    .registers 5

    .line 337
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 338
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/Message;->what:I

    .line 339
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 340
    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    iput-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 343
    const/4 v2, -0x1

    iput v2, p0, Landroid/os/Message;->sendingUid:I

    .line 344
    iput v2, p0, Landroid/os/Message;->workSourceUid:I

    .line 345
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Message;->when:J

    .line 346
    iput-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 347
    iput-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 348
    iput-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 350
    iget-object v1, p0, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;->reset()V

    .line 353
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_26
    sget v2, Landroid/os/Message;->sPoolSize:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_35

    .line 355
    sget-object v3, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 356
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 357
    add-int/2addr v2, v0

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 359
    :cond_35
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public whitelist sendToTarget()V
    .registers 2

    .line 481
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 482
    return-void
.end method

.method public whitelist setAsynchronous(Z)V
    .registers 3
    .param p1, "async"    # Z

    .line 523
    if-eqz p1, :cond_9

    .line 524
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    goto :goto_f

    .line 526
    :cond_9
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 528
    :goto_f
    return-void
.end method

.method public greylist setCallback(Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 422
    iput-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 423
    return-object p0
.end method

.method public whitelist setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 463
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 464
    return-void
.end method

.method public whitelist setTarget(Landroid/os/Handler;)V
    .registers 2
    .param p1, "target"    # Landroid/os/Handler;

    .line 392
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 393
    return-void
.end method

.method public greylist-max-o setWhat(I)Landroid/os/Message;
    .registers 2
    .param p1, "what"    # I

    .line 472
    iput p1, p0, Landroid/os/Message;->what:I

    .line 473
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist toString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 555
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_73

    .line 556
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2c

    .line 557
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 560
    :cond_2c
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    :goto_36
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_44

    .line 565
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    :cond_44
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_52

    .line 570
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    :cond_52
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_60

    .line 575
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    :cond_60
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 582
    :cond_73
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    :goto_7d
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 639
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_59

    .line 646
    iget v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    .line 651
    :try_start_17
    check-cast v0, Landroid/os/Parcelable;

    .line 652
    .local v0, "p":Landroid/os/Parcelable;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_20} :catch_21

    .line 660
    .end local v0    # "p":Landroid/os/Parcelable;
    goto :goto_3f

    .line 654
    :catch_21
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t marshal non-Parcelable objects across processes: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_3b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    :goto_3f
    iget-wide v0, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 665
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 666
    iget-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 667
    iget v0, p0, Landroid/os/Message;->sendingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v0, p0, Landroid/os/Message;->workSourceUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    return-void

    .line 643
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t marshal callbacks across processes: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
