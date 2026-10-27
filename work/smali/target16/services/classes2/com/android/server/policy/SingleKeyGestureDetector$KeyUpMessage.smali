.class public final Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;
.super Ljava/lang/Record;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "rule",
        "pressCount",
        "event"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        I,
        Landroid/view/KeyEvent;
    }
.end annotation


# instance fields
.field public final event:Landroid/view/KeyEvent;

.field public final pressCount:I

.field public final rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;


# direct methods
.method public static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)Landroid/view/KeyEvent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->event:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpressCount(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->pressCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrule(Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;ILandroid/view/KeyEvent;)V
    .registers 4

    .line 186
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->pressCount:I

    iput-object p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->event:Landroid/view/KeyEvent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;ILandroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;ILandroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->pressCount:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->pressCount:I

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->event:Landroid/view/KeyEvent;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->event:Landroid/view/KeyEvent;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->pressCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->event:Landroid/view/KeyEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    .line 186
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->pressCount:I

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->event:Landroid/view/KeyEvent;

    invoke-static {v0, v1, p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;

    const-string/jumbo v1, "rule;pressCount;event"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
