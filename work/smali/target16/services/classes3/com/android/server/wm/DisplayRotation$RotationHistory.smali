.class public Lcom/android/server/wm/DisplayRotation$RotationHistory;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# instance fields
.field public final mRecords:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/android/server/wm/DisplayRotation;I)V
    .registers 5

    .line 2264
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_f

    .line 2265
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 2267
    :cond_f
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 2268
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;-><init>(Lcom/android/server/wm/DisplayRotation;II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
