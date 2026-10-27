.class Landroid/media/AudioStatusHandler$DeviceState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceState"
.end annotation


# instance fields
.field blacklist mConfig:I

.field blacklist mPid:I

.field blacklist mReason:Ljava/lang/String;

.field blacklist mUid:I

.field blacklist mUsage:I

.field final synthetic blacklist this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/media/AudioStatusHandler;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;
    .param p2, "usage"    # I

    .line 200
    iput-object p1, p0, Landroid/media/AudioStatusHandler$DeviceState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    .line 203
    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    .line 204
    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public blacklist update(IILjava/lang/String;)Z
    .registers 10
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 209
    iget v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a5

    iget v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    if-ne p2, v0, :cond_b

    goto/16 :goto_a5

    .line 213
    :cond_b
    iput p2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    .line 215
    const/4 v0, 0x1

    if-nez p3, :cond_1e

    .line 216
    const-string v1, ""

    iput-object v1, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    .line 217
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceState update eventSource is null, but normal"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v0

    .line 221
    :cond_1e
    const/16 v2, 0x3a

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "upInfo":[Ljava/lang/String;
    :try_start_2f
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    .line 224
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_47} :catch_48

    .line 229
    goto :goto_56

    .line 225
    :catch_48
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    iput v1, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    .line 227
    iput v1, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    .line 228
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DeviceState update failed to format uid & pid"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_56
    iput-object p3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    .line 233
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 234
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceState update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_a4
    return v0

    .line 210
    .end local v2    # "upInfo":[Ljava/lang/String;
    :cond_a5
    :goto_a5
    return v1
.end method
