.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "RowLayout.java"


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
.method public static synthetic blacklist $r8$lambda$64J4s4Oep66P8Sy3oJaihuIzSn8(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->lambda$computeSize$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JIhwghNOcmC4N2CaFmzO0szeTRU(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->lambda$computeWrapSize$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$swmWPQdAR9my1vBMbCJXW5AM1FM(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V
    .registers 11

    .line 68
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 55
    move-object p1, p0

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    .line 69
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    .line 70
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    .line 71
    iput p10, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 18

    .line 81
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

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 92
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7

    .line 437
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 440
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 441
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 442
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 443
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 473
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 474
    const-string v0, "Row layout implementation, positioning components one after the other horizontally.\n\nIt supports weight and horizontal/vertical positioning."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 478
    const/16 v0, 0x190

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 479
    const-string v0, "Start"

    const-string v1, "layout-RowLayout-start-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 480
    const-string v0, "Center"

    const-string v1, "layout-RowLayout-center-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 481
    const-string v0, "End"

    const-string v1, "layout-RowLayout-end-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 482
    const-string v0, "SpaceEvenly"

    const-string v1, "layout-RowLayout-space-evenly-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 483
    const-string v0, "SpaceAround"

    const-string v1, "layout-RowLayout-space-around-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 484
    const-string v0, "SpaceBetween"

    const-string v1, "layout-RowLayout-space-between-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 485
    const/4 v0, 0x0

    const-string v1, "COMPONENT_ID"

    const-string/jumbo v2, "unique id for this component"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 486
    const-string v1, "ANIMATION_ID"

    const-string v2, "id used to match components, for animation purposes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 490
    const-string v1, "HORIZONTAL_POSITIONING"

    const-string v2, "horizontal positioning value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 491
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 492
    const-string v1, "CENTER"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 493
    const-string v4, "END"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 494
    const-string v4, "SPACE_BETWEEN"

    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 495
    const-string v4, "SPACE_EVENLY"

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 496
    const-string v4, "SPACE_AROUND"

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 497
    const-string v4, "VERTICAL_POSITIONING"

    const-string/jumbo v5, "vertical positioning value"

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 498
    const-string v0, "TOP"

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 499
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 500
    const-string v0, "BOTTOM"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 501
    const-string v0, "SPACED_BY"

    const-string v1, "Horizontal spacing between components"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 502
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 2

    .line 524
    packed-switch p1, :pswitch_data_1e

    .line 542
    const-string p1, "NONE"

    return-object p1

    .line 540
    :pswitch_6
    const-string p1, "SPACE_AROUND"

    return-object p1

    .line 538
    :pswitch_9
    const-string p1, "SPACE_EVENLY"

    return-object p1

    .line 536
    :pswitch_c
    const-string p1, "SPACE_BETWEEN"

    return-object p1

    .line 534
    :pswitch_f
    const-string p1, "BOTTOM"

    return-object p1

    .line 532
    :pswitch_12
    const-string p1, "TOP"

    return-object p1

    .line 530
    :pswitch_15
    const-string p1, "END"

    return-object p1

    .line 528
    :pswitch_18
    const-string p1, "CENTER"

    return-object p1

    .line 526
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

    .line 417
    const/16 v0, 0xcb

    return v0
.end method

.method private synthetic blacklist lambda$computeSize$1()Ljava/lang/String;
    .registers 3

    .line 161
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

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

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

    .line 134
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

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

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

    .line 198
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

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    return-object p1
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 408
    const-string v0, "RowLayout"

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

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 457
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10

    .line 161
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 162
    nop

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 164
    move-object p0, v1

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 165
    invoke-virtual {p6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    sub-float/2addr p3, v1

    .line 169
    :cond_2e
    goto :goto_f

    .line 170
    :cond_2f
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 171
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 15

    .line 134
    new-instance p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)V

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 135
    nop

    .line 136
    nop

    .line 137
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 p5, 0x0

    move v3, p2

    :goto_12
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 138
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v5, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 139
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result p2

    if-nez p2, :cond_53

    .line 141
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p7, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 142
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p7, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 143
    add-int/lit8 p5, p5, 0x1

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p1

    sub-float/2addr v3, p1

    .line 146
    :cond_53
    move-object p1, v1

    move p3, v5

    move-object p6, v6

    goto :goto_12

    .line 147
    :cond_57
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6d

    .line 148
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    add-int/lit8 p5, p5, -0x1

    int-to-float p3, p5

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p7, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 150
    :cond_6d
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 151
    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 5

    .line 392
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getLocationInWindow([FZ)V

    .line 394
    if-nez p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    instance-of p2, p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz p2, :cond_19

    .line 395
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    check-cast p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 397
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getScrollX()F

    move-result p2

    add-float/2addr v1, p2

    aput v1, p1, v0

    .line 399
    :cond_19
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "ROW"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 20

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 196
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 209
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 210
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 211
    return-void

    .line 213
    :cond_1c
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    .line 214
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingTop:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingBottom:F

    sub-float/2addr v1, v3

    .line 215
    nop

    .line 216
    nop

    .line 218
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 219
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 220
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getHorizontalScrollDimension()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    move v8, v2

    goto :goto_49

    .line 218
    :cond_48
    move v8, v2

    .line 224
    :goto_49
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 225
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 226
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getVerticalScrollDimension()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingTop:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingBottom:F

    sub-float/2addr v1, v2

    move v9, v1

    goto :goto_60

    .line 224
    :cond_5f
    move v9, v1

    .line 229
    :goto_60
    const/4 v10, 0x1

    move v1, v10

    .line 231
    :goto_62
    const/4 v11, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_135

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

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

    .line 238
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 240
    goto :goto_73

    .line 242
    :cond_8a
    instance-of v5, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v5, :cond_a6

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 243
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 244
    nop

    .line 245
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v3

    add-float/2addr v12, v3

    move v13, v10

    goto :goto_ab

    .line 247
    :cond_a6
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    add-float/2addr v2, v3

    .line 249
    :goto_ab
    goto :goto_73

    .line 253
    :cond_ac
    if-eqz v13, :cond_128

    .line 254
    sub-float v14, v8, v2

    .line 255
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 256
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_127

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 257
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 258
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 260
    goto :goto_b6

    .line 262
    :cond_de
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v4

    .line 263
    mul-float/2addr v4, v14

    div-float/2addr v4, v12

    .line 264
    nop

    .line 265
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_10d

    .line 267
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v5

    .line 268
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v2

    .line 269
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v16, v5, v6

    if-eqz v16, :cond_105

    .line 270
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 272
    :cond_105
    cmpl-float v5, v2, v6

    if-eqz v5, :cond_10d

    .line 273
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 276
    :cond_10d
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 277
    nop

    .line 279
    move-object v2, v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    .line 280
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    .line 281
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    .line 282
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    .line 277
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 285
    :cond_127
    goto :goto_b6

    .line 288
    :cond_128
    invoke-virtual {v0, v8, v9, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    move-result v1

    if-eqz v1, :cond_132

    if-eqz v13, :cond_132

    .line 289
    move v1, v10

    goto :goto_133

    .line 291
    :cond_132
    move v1, v11

    :goto_133
    goto/16 :goto_62

    .line 293
    :cond_135
    nop

    .line 294
    nop

    .line 295
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

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

    .line 296
    invoke-virtual {v7, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v5

    .line 297
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v6

    if-eqz v6, :cond_156

    .line 298
    goto :goto_13f

    .line 300
    :cond_156
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    add-float/2addr v3, v6

    .line 301
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 302
    add-int/lit8 v11, v11, 0x1

    .line 303
    goto :goto_13f

    .line 304
    :cond_166
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    add-int/lit8 v4, v11, -0x1

    int-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 306
    nop

    .line 307
    nop

    .line 309
    nop

    .line 310
    nop

    .line 312
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_268

    :pswitch_178
    move v1, v2

    move v8, v1

    goto/16 :goto_20d

    .line 349
    :pswitch_17c
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

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

    .line 350
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 352
    goto :goto_183

    .line 354
    :cond_19a
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    add-float/2addr v3, v4

    .line 355
    goto :goto_183

    .line 356
    :cond_1a0
    sub-float/2addr v8, v3

    int-to-float v1, v11

    div-float/2addr v8, v1

    .line 357
    div-float v1, v8, v5

    goto/16 :goto_20d

    .line 338
    :pswitch_1a7
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

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

    .line 339
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 340
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v6

    if-eqz v6, :cond_1c5

    .line 341
    goto :goto_1ae

    .line 343
    :cond_1c5
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    add-float/2addr v3, v4

    .line 344
    goto :goto_1ae

    .line 345
    :cond_1cb
    sub-float/2addr v8, v3

    add-int/2addr v11, v10

    int-to-float v1, v11

    div-float/2addr v8, v1

    .line 346
    nop

    .line 347
    move v1, v8

    goto :goto_20d

    .line 323
    :pswitch_1d2
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

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

    .line 324
    invoke-virtual {v7, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v12

    .line 325
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v13

    if-eqz v13, :cond_1f0

    .line 326
    goto :goto_1d9

    .line 328
    :cond_1f0
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v12

    add-float/2addr v6, v12

    .line 329
    goto :goto_1d9

    .line 330
    :cond_1f6
    if-le v11, v10, :cond_1fc

    .line 331
    sub-float/2addr v8, v6

    div-float/2addr v8, v4

    move v1, v2

    goto :goto_20d

    .line 334
    :cond_1fc
    sub-float/2addr v8, v3

    div-float v1, v8, v5

    .line 336
    move v8, v2

    goto :goto_20d

    .line 317
    :pswitch_201
    sub-float v1, v8, v3

    .line 318
    move v8, v2

    goto :goto_20d

    .line 320
    :pswitch_205
    sub-float/2addr v8, v3

    div-float v1, v8, v5

    .line 321
    move v8, v2

    goto :goto_20d

    .line 314
    :pswitch_20a
    nop

    .line 315
    move v1, v2

    move v8, v1

    .line 361
    :goto_20d
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_214
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_263

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 362
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v6

    .line 363
    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    packed-switch v10, :pswitch_data_27c

    :pswitch_229
    goto :goto_23c

    .line 371
    :pswitch_22a
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    sub-float v4, v9, v4

    goto :goto_23c

    .line 365
    :pswitch_231
    nop

    .line 366
    move v4, v2

    goto :goto_23c

    .line 368
    :pswitch_234
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    sub-float v4, v9, v4

    div-float/2addr v4, v5

    .line 369
    nop

    .line 374
    :goto_23c
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 375
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 376
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v10

    if-eqz v10, :cond_249

    .line 377
    goto :goto_214

    .line 379
    :cond_249
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    add-float/2addr v1, v6

    .line 380
    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/4 v10, 0x6

    if-eq v6, v10, :cond_25e

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/16 v10, 0x8

    if-eq v6, v10, :cond_25e

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/4 v10, 0x7

    if-ne v6, v10, :cond_25f

    .line 383
    :cond_25e
    add-float/2addr v1, v8

    .line 385
    :cond_25f
    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    add-float/2addr v1, v6

    .line 386
    goto :goto_214

    .line 387
    :cond_263
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 388
    return-void

    nop

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_20a
        :pswitch_205
        :pswitch_201
        :pswitch_178
        :pswitch_178
        :pswitch_1d2
        :pswitch_1a7
        :pswitch_17c
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x2
        :pswitch_234
        :pswitch_229
        :pswitch_231
        :pswitch_22a
    .end packed-switch
.end method

.method public blacklist isInHorizontalFill()Z
    .registers 2

    .line 122
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->childrenHaveHorizontalWeights()Z

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

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 186
    nop

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 188
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 189
    goto :goto_c

    .line 190
    :cond_21
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 6

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 176
    nop

    .line 177
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

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

    .line 178
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    add-float/2addr v2, v3

    .line 179
    goto :goto_c

    .line 180
    :cond_1e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 517
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 518
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 519
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 520
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "spacedBy"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 521
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8

    .line 506
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 513
    return-void
.end method
