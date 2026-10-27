.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "ColumnLayout.java"


# static fields
.field public static final blacklist BOTTOM:I = 0x5

.field public static final blacklist CENTER:I = 0x2

.field public static final blacklist END:I = 0x3

.field public static final blacklist SPACE_AROUND:I = 0x8

.field public static final blacklist SPACE_BETWEEN:I = 0x6

.field public static final blacklist SPACE_EVENLY:I = 0x7

.field public static final blacklist START:I = 0x1

.field public static final blacklist TOP:I = 0x4


# instance fields
.field blacklist mHorizontalPositioning:I

.field blacklist mSpacedBy:F

.field blacklist mVerticalPositioning:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2lBfnWzgtr_Pm28ziGCHhfRAvEQ(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ym_JaJ1NbrWgDB52WfgzccZwj18(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$computeWrapSize$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$eAYbjOVZeccGYPKpSIhbW6F7Xl8(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$computeSize$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V
    .registers 11

    .line 70
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 57
    move-object p1, p0

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    .line 71
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    .line 72
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    .line 73
    iput p10, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 18

    .line 83
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 94
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7

    .line 423
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 426
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 427
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 428
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 429
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 459
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 460
    const-string v0, "Column layout implementation, positioning components one after the other vertically.\n\nIt supports weight and horizontal/vertical positioning."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 464
    const/16 v0, 0x64

    const/16 v1, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 465
    const-string v0, "Top"

    const-string v1, "layout-ColumnLayout-start-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 466
    const-string v0, "Center"

    const-string v1, "layout-ColumnLayout-start-center.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 467
    const-string v0, "Bottom"

    const-string v1, "layout-ColumnLayout-start-bottom.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 468
    const-string v0, "SpaceEvenly"

    const-string v1, "layout-ColumnLayout-start-space-evenly.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 469
    const-string v0, "SpaceAround"

    const-string v1, "layout-ColumnLayout-start-space-around.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 470
    const-string v0, "SpaceBetween"

    const-string v1, "layout-ColumnLayout-start-space-between.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 471
    const/4 v0, 0x0

    const-string v1, "COMPONENT_ID"

    const-string/jumbo v2, "unique id for this component"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 472
    const-string v1, "ANIMATION_ID"

    const-string v2, "id used to match components, for animation purposes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 476
    const-string v1, "HORIZONTAL_POSITIONING"

    const-string v2, "horizontal positioning value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 477
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 478
    const-string v1, "CENTER"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 479
    const-string v4, "END"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 480
    const-string v4, "VERTICAL_POSITIONING"

    const-string/jumbo v5, "vertical positioning value"

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 481
    const-string v0, "TOP"

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 482
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 483
    const-string v0, "BOTTOM"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 484
    const-string v0, "SPACE_BETWEEN"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 485
    const-string v0, "SPACE_EVENLY"

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 486
    const-string v0, "SPACE_AROUND"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 487
    const-string v0, "SPACED_BY"

    const-string v1, "Horizontal spacing between components"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 488
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 2

    .line 510
    packed-switch p1, :pswitch_data_1e

    .line 528
    const-string p1, "NONE"

    return-object p1

    .line 526
    :pswitch_6
    const-string p1, "SPACE_AROUND"

    return-object p1

    .line 524
    :pswitch_9
    const-string p1, "SPACE_EVENLY"

    return-object p1

    .line 522
    :pswitch_c
    const-string p1, "SPACE_BETWEEN"

    return-object p1

    .line 520
    :pswitch_f
    const-string p1, "BOTTOM"

    return-object p1

    .line 518
    :pswitch_12
    const-string p1, "TOP"

    return-object p1

    .line 516
    :pswitch_15
    const-string p1, "END"

    return-object p1

    .line 514
    :pswitch_18
    const-string p1, "CENTER"

    return-object p1

    .line 512
    :pswitch_1b
    const-string p1, "START"

    return-object p1

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 403
    const/16 v0, 0xcc

    return v0
.end method

.method private synthetic blacklist lambda$computeSize$1()Ljava/lang/String;
    .registers 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPUTE SIZE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$computeWrapSize$0()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPUTE WRAP SIZE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .registers 4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL LAYOUT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    return-object p1
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 394
    const-string v0, "ColumnLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 443
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10

    .line 163
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 164
    nop

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 166
    move-object p0, v1

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 167
    invoke-virtual {p6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 169
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    sub-float/2addr p5, v1

    .line 171
    :cond_2e
    goto :goto_f

    .line 172
    :cond_2f
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 173
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 15

    .line 136
    new-instance p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)V

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 137
    nop

    .line 138
    nop

    .line 139
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 p5, 0x0

    move v5, p3

    :goto_12
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 140
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 141
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result p2

    if-nez p2, :cond_53

    .line 143
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p7, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 144
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p7, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 145
    add-int/lit8 p5, p5, 0x1

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p1

    sub-float/2addr v5, p1

    .line 148
    :cond_53
    move-object p1, v1

    move p2, v3

    move-object p6, v6

    goto :goto_12

    .line 149
    :cond_57
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6d

    .line 150
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-int/lit8 p5, p5, -0x1

    int-to-float p3, p5

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p7, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 152
    :cond_6d
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 153
    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 5

    .line 378
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getLocationInWindow([FZ)V

    .line 380
    if-nez p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    instance-of p2, p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz p2, :cond_19

    .line 381
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    check-cast p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 383
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getScrollY()F

    move-result p2

    add-float/2addr v1, p2

    aput v1, p1, v0

    .line 385
    :cond_19
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "COLUMN"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 20

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 188
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 201
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 202
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 203
    return-void

    .line 205
    :cond_1c
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    .line 206
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingTop:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingBottom:F

    sub-float/2addr v1, v3

    .line 207
    nop

    .line 208
    nop

    .line 210
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 211
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 212
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getHorizontalScrollDimension()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    move v8, v2

    goto :goto_49

    .line 210
    :cond_48
    move v8, v2

    .line 216
    :goto_49
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 217
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 218
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getVerticalScrollDimension()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingTop:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingBottom:F

    sub-float/2addr v1, v2

    move v9, v1

    goto :goto_60

    .line 216
    :cond_5f
    move v9, v1

    .line 220
    :goto_60
    const/4 v10, 0x1

    move v1, v10

    .line 221
    :goto_62
    const/4 v11, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_135

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v12, v2

    move v13, v11

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 228
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 229
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 230
    goto :goto_73

    .line 232
    :cond_8a
    instance-of v5, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v5, :cond_a6

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 233
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 234
    nop

    .line 235
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v3

    add-float/2addr v12, v3

    move v13, v10

    goto :goto_ab

    .line 237
    :cond_a6
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    add-float/2addr v2, v3

    .line 239
    :goto_ab
    goto :goto_73

    .line 240
    :cond_ac
    if-eqz v13, :cond_128

    .line 241
    sub-float v14, v9, v2

    .line 242
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 243
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_127

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 244
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 245
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 247
    goto :goto_b6

    .line 249
    :cond_de
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v4

    .line 250
    mul-float/2addr v4, v14

    div-float/2addr v4, v12

    .line 251
    nop

    .line 252
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_10d

    .line 254
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v5

    .line 255
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMax()F

    move-result v2

    .line 256
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v16, v5, v6

    if-eqz v16, :cond_105

    .line 257
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 259
    :cond_105
    cmpl-float v5, v2, v6

    if-eqz v5, :cond_10d

    .line 260
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 263
    :cond_10d
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 264
    nop

    .line 266
    move-object v2, v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    .line 267
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    .line 268
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    .line 269
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    .line 264
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 272
    :cond_127
    goto :goto_b6

    .line 275
    :cond_128
    invoke-virtual {v0, v8, v9, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    move-result v1

    if-eqz v1, :cond_132

    if-eqz v13, :cond_132

    .line 276
    move v1, v10

    goto :goto_133

    .line 278
    :cond_132
    move v1, v11

    :goto_133
    goto/16 :goto_62

    .line 280
    :cond_135
    nop

    .line 281
    nop

    .line 282
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    move v4, v3

    :goto_13f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_166

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 283
    invoke-virtual {v7, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v5

    .line 284
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v6

    if-eqz v6, :cond_156

    .line 285
    goto :goto_13f

    .line 287
    :cond_156
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 288
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    add-float/2addr v3, v5

    .line 289
    add-int/lit8 v11, v11, 0x1

    .line 290
    goto :goto_13f

    .line 291
    :cond_166
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-int/lit8 v4, v11, -0x1

    int-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 293
    nop

    .line 294
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_266

    :pswitch_178
    move v1, v2

    move v9, v1

    goto/16 :goto_20d

    .line 335
    :pswitch_17c
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_183
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 336
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 337
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 338
    goto :goto_183

    .line 340
    :cond_19a
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    add-float/2addr v3, v4

    .line 341
    goto :goto_183

    .line 342
    :cond_1a0
    sub-float/2addr v9, v3

    int-to-float v1, v11

    div-float/2addr v9, v1

    .line 343
    div-float v1, v9, v5

    goto/16 :goto_20d

    .line 324
    :pswitch_1a7
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1ae
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 325
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 326
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v6

    if-eqz v6, :cond_1c5

    .line 327
    goto :goto_1ae

    .line 329
    :cond_1c5
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    add-float/2addr v3, v4

    .line 330
    goto :goto_1ae

    .line 331
    :cond_1cb
    sub-float/2addr v9, v3

    add-int/2addr v11, v10

    int-to-float v1, v11

    div-float/2addr v9, v1

    .line 332
    nop

    .line 333
    move v1, v9

    goto :goto_20d

    .line 309
    :pswitch_1d2
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v2

    :goto_1d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 310
    invoke-virtual {v7, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v12

    .line 311
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v13

    if-eqz v13, :cond_1f0

    .line 312
    goto :goto_1d9

    .line 314
    :cond_1f0
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v12

    add-float/2addr v6, v12

    .line 315
    goto :goto_1d9

    .line 316
    :cond_1f6
    if-le v11, v10, :cond_1fc

    .line 317
    sub-float/2addr v9, v6

    div-float/2addr v9, v4

    move v1, v2

    goto :goto_20d

    .line 320
    :cond_1fc
    sub-float/2addr v9, v3

    div-float v1, v9, v5

    .line 322
    move v9, v2

    goto :goto_20d

    .line 306
    :pswitch_201
    sub-float v1, v9, v3

    .line 307
    move v9, v2

    goto :goto_20d

    .line 300
    :pswitch_205
    nop

    .line 301
    move v1, v2

    move v9, v1

    goto :goto_20d

    .line 303
    :pswitch_209
    sub-float/2addr v9, v3

    div-float v1, v9, v5

    .line 304
    move v9, v2

    .line 347
    :goto_20d
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_214
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_262

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 348
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v6

    .line 349
    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    packed-switch v10, :pswitch_data_278

    goto :goto_23b

    .line 357
    :pswitch_22a
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    sub-float v4, v8, v4

    goto :goto_23b

    .line 354
    :pswitch_231
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    sub-float v4, v8, v4

    div-float/2addr v4, v5

    .line 355
    goto :goto_23b

    .line 351
    :pswitch_239
    nop

    .line 352
    move v4, v2

    .line 360
    :goto_23b
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 361
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 362
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v10

    if-eqz v10, :cond_248

    .line 363
    goto :goto_214

    .line 365
    :cond_248
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    add-float/2addr v1, v6

    .line 366
    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/4 v10, 0x6

    if-eq v6, v10, :cond_25d

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/16 v10, 0x8

    if-eq v6, v10, :cond_25d

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/4 v10, 0x7

    if-ne v6, v10, :cond_25e

    .line 369
    :cond_25d
    add-float/2addr v1, v9

    .line 371
    :cond_25e
    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-float/2addr v1, v6

    .line 372
    goto :goto_214

    .line 373
    :cond_262
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 374
    return-void

    :pswitch_data_266
    .packed-switch 0x2
        :pswitch_209
        :pswitch_178
        :pswitch_205
        :pswitch_201
        :pswitch_1d2
        :pswitch_1a7
        :pswitch_17c
    .end packed-switch

    :pswitch_data_278
    .packed-switch 0x1
        :pswitch_239
        :pswitch_231
        :pswitch_22a
    .end packed-switch
.end method

.method public blacklist isInVerticalFill()Z
    .registers 2

    .line 124
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->childrenHaveVerticalWeights()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 6

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 178
    nop

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 180
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    add-float/2addr v2, v3

    .line 181
    goto :goto_c

    .line 182
    :cond_1e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 503
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 504
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 505
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 506
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "spacedBy"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 507
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8

    .line 492
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 499
    return-void
.end method
