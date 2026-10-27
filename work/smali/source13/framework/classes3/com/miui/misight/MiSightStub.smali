.class public Lcom/miui/misight/MiSightStub;
.super Ljava/lang/Object;
.source "MiSightStub.java"


# static fields
.field private static final blacklist sInstance:Lcom/miui/misight/MiSightStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8
    const-class v0, Lcom/miui/misight/MiSightStub;

    .line 9
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/misight/MiSightStub;

    sput-object v0, Lcom/miui/misight/MiSightStub;->sInstance:Lcom/miui/misight/MiSightStub;

    .line 8
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Lcom/miui/misight/MiSightStub;
    .registers 1

    .line 12
    sget-object v0, Lcom/miui/misight/MiSightStub;->sInstance:Lcom/miui/misight/MiSightStub;

    return-object v0
.end method


# virtual methods
.method public varargs blacklist constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;
    .registers 5
    .param p1, "eventId"    # I
    .param p2, "keyVals"    # [Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " constructEvent id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiEventStub:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendEvent(Lcom/miui/misight/MiEventStub;)V
    .registers 2
    .param p1, "event"    # Lcom/miui/misight/MiEventStub;

    .line 16
    return-void
.end method
