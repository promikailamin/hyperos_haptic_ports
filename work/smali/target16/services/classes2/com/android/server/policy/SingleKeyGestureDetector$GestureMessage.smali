.class public final Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;
.super Ljava/lang/Record;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "rule",
        "event"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        Lcom/android/server/policy/SingleKeyGestureEvent;
    }
.end annotation


# instance fields
.field public final event:Lcom/android/server/policy/SingleKeyGestureEvent;

.field public final rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;


# direct methods
.method public static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;)Lcom/android/server/policy/SingleKeyGestureEvent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->event:Lcom/android/server/policy/SingleKeyGestureEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetrule(Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput-object p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->event:Lcom/android/server/policy/SingleKeyGestureEvent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->event:Lcom/android/server/policy/SingleKeyGestureEvent;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->event:Lcom/android/server/policy/SingleKeyGestureEvent;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->event:Lcom/android/server/policy/SingleKeyGestureEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->event:Lcom/android/server/policy/SingleKeyGestureEvent;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/ForceInvertOverrideState$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 188
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    const-string/jumbo v1, "rule;event"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
