.class public Lcom/android/server/wm/DisplayPolicyStub$Instance;
.super Ljava/lang/Object;
.source "DisplayPolicyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/wm/DisplayPolicyStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/wm/DisplayPolicyStub;
    .registers 1

    sget-object v0, Lcom/android/server/wm/DisplayPolicyStub$Instance;->sInstance:Lcom/android/server/wm/DisplayPolicyStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/wm/DisplayPolicyStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayPolicyStub;

    sput-object v0, Lcom/android/server/wm/DisplayPolicyStub$Instance;->sInstance:Lcom/android/server/wm/DisplayPolicyStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
