.class final Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidStateCallbackInfo"
.end annotation


# instance fields
.field public capability:I

.field public isPending:Z

.field public procState:I

.field public procStateSeq:J

.field public uid:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 1164
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public update(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 1170
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->uid:I

    .line 1171
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 1172
    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 1173
    iput p5, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    .line 1174
    return-void
.end method
