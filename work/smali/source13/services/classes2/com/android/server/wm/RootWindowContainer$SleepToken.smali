.class final Lcom/android/server/wm/RootWindowContainer$SleepToken;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SleepToken"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mDisplayId:I

.field final mHashKey:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 3832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3833
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    .line 3834
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    .line 3835
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    .line 3836
    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$smmakeSleepTokenKey(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    .line 3837
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 3841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    .line 3842
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3841
    return-object v0
.end method

.method writeTagToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3846
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3847
    return-void
.end method
