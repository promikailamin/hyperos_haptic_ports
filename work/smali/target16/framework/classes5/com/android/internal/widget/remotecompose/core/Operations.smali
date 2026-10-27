.class public Lcom/android/internal/widget/remotecompose/core/Operations;
.super Ljava/lang/Object;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_SEMANTICS:I = 0xfa

.field public static final blacklist ANIMATED_FLOAT:I = 0x51

.field public static final blacklist ANIMATION_SPEC:I = 0xe

.field public static final blacklist ATTRIBUTE_COLOR:I = 0xb4

.field public static final blacklist ATTRIBUTE_IMAGE:I = 0xab

.field public static final blacklist ATTRIBUTE_TEXT:I = 0xaa

.field public static final blacklist ATTRIBUTE_TIME:I = 0xac

.field public static final blacklist BITMAP_TEXT_MEASURE:I = 0xb7

.field public static final blacklist CANVAS_OPERATIONS:I = 0xad

.field public static final blacklist CLICK_AREA:I = 0x40

.field public static final blacklist CLIP_PATH:I = 0x26

.field public static final blacklist CLIP_RECT:I = 0x27

.field public static final blacklist COLOR_CONSTANT:I = 0x8a

.field public static final blacklist COLOR_EXPRESSIONS:I = 0x86

.field public static final blacklist COMPONENT_START:I = 0x2

.field public static final blacklist COMPONENT_VALUE:I = 0x96

.field public static final blacklist CONDITIONAL_OPERATIONS:I = 0xb2

.field public static final blacklist CONTAINER_END:I = 0xd6

.field public static final blacklist DATA_BITMAP:I = 0x65

.field public static final blacklist DATA_BITMAP_FONT:I = 0xa7

.field public static final blacklist DATA_BOOLEAN:I = 0x8f

.field public static final blacklist DATA_FLOAT:I = 0x50

.field public static final blacklist DATA_FONT:I = 0xbd

.field public static final blacklist DATA_INT:I = 0x8c

.field public static final blacklist DATA_LONG:I = 0x94

.field public static final blacklist DATA_MAP_LOOKUP:I = 0x9a

.field public static final blacklist DATA_PATH:I = 0x7b

.field public static final blacklist DATA_SHADER:I = 0x2d

.field public static final blacklist DATA_TEXT:I = 0x66

.field public static final blacklist DEBUG_MESSAGE:I = 0xb3

.field public static final blacklist DRAW_ARC:I = 0x98

.field public static final blacklist DRAW_BITMAP:I = 0x2c

.field public static final blacklist DRAW_BITMAP_FONT_TEXT_RUN:I = 0x30

.field public static final blacklist DRAW_BITMAP_FONT_TEXT_RUN_ON_PATH:I = 0x31

.field public static final blacklist DRAW_BITMAP_INT:I = 0x42

.field public static final blacklist DRAW_BITMAP_SCALED:I = 0x95

.field public static final blacklist DRAW_BITMAP_TEXT_ANCHORED:I = 0xb8

.field public static final blacklist DRAW_CIRCLE:I = 0x2e

.field public static final blacklist DRAW_CONTENT:I = 0x8b

.field public static final blacklist DRAW_LINE:I = 0x2f

.field public static final blacklist DRAW_OVAL:I = 0x38

.field public static final blacklist DRAW_PATH:I = 0x7c

.field public static final blacklist DRAW_RECT:I = 0x2a

.field public static final blacklist DRAW_ROUND_RECT:I = 0x33

.field public static final blacklist DRAW_SECTOR:I = 0x34

.field public static final blacklist DRAW_TEXT_ANCHOR:I = 0x85

.field public static final blacklist DRAW_TEXT_ON_PATH:I = 0x35

.field public static final blacklist DRAW_TEXT_RUN:I = 0x2b

.field public static final blacklist DRAW_TO_BITMAP:I = 0xbe

.field public static final blacklist DRAW_TWEEN_PATH:I = 0x7d

.field public static final blacklist EXTENDED_OPCODE:I = 0xff

.field public static final blacklist EXTENSION_RANGE_RESERVED_1:I = 0xfe

.field public static final blacklist EXTENSION_RANGE_RESERVED_2:I = 0xfd

.field public static final blacklist EXTENSION_RANGE_RESERVED_3:I = 0xfc

.field public static final blacklist EXTENSION_RANGE_RESERVED_4:I = 0xfb

.field public static final blacklist FLOAT_LIST:I = 0x93

.field public static final blacklist FUNCTION_CALL:I = 0xa6

.field public static final blacklist FUNCTION_DEFINE:I = 0xa8

.field public static final blacklist HAPTIC_FEEDBACK:I = 0xb1

.field public static final blacklist HEADER:I = 0x0

.field public static final blacklist HOST_ACTION:I = 0xd1

.field public static final blacklist HOST_METADATA_ACTION:I = 0xd8

.field public static final blacklist HOST_NAMED_ACTION:I = 0xd2

.field public static final blacklist ID_LIST:I = 0x92

.field public static final blacklist ID_LOOKUP:I = 0xc0

.field public static final blacklist ID_MAP:I = 0x91

.field public static final blacklist IMPULSE_PROCESS:I = 0xa5

.field public static final blacklist IMPULSE_START:I = 0xa4

.field public static final blacklist INTEGER_EXPRESSION:I = 0x90

.field public static final blacklist LAYOUT_BOX:I = 0xca

.field public static final blacklist LAYOUT_CANVAS:I = 0xcd

.field public static final blacklist LAYOUT_CANVAS_CONTENT:I = 0xcf

.field public static final blacklist LAYOUT_COLLAPSIBLE_COLUMN:I = 0xe9

.field public static final blacklist LAYOUT_COLLAPSIBLE_ROW:I = 0xe6

.field public static final blacklist LAYOUT_COLUMN:I = 0xcc

.field public static final blacklist LAYOUT_CONTENT:I = 0xc9

.field public static final blacklist LAYOUT_FIT_BOX:I = 0xb0

.field public static final blacklist LAYOUT_IMAGE:I = 0xea

.field public static final blacklist LAYOUT_ROOT:I = 0xc8

.field public static final blacklist LAYOUT_ROW:I = 0xcb

.field public static final blacklist LAYOUT_STATE:I = 0xd9

.field public static final blacklist LAYOUT_TEXT:I = 0xd0

.field public static final blacklist LOAD_BITMAP:I = 0x4

.field public static final blacklist LOOP_START:I = 0xd7

.field public static final blacklist MATRIX_CONSTANT:I = 0xba

.field public static final blacklist MATRIX_EXPRESSION:I = 0xbb

.field public static final blacklist MATRIX_FROM_PATH:I = 0xb5

.field public static final blacklist MATRIX_RESTORE:I = 0x83

.field public static final blacklist MATRIX_ROTATE:I = 0x81

.field public static final blacklist MATRIX_SAVE:I = 0x82

.field public static final blacklist MATRIX_SCALE:I = 0x7e

.field public static final blacklist MATRIX_SET:I = 0x84

.field public static final blacklist MATRIX_SKEW:I = 0x80

.field public static final blacklist MATRIX_TRANSLATE:I = 0x7f

.field public static final blacklist MATRIX_VECTOR_MATH:I = 0xbc

.field public static final blacklist MODIFIER_BACKGROUND:I = 0x37

.field public static final blacklist MODIFIER_BORDER:I = 0x6b

.field public static final blacklist MODIFIER_CLICK:I = 0x3b

.field public static final blacklist MODIFIER_CLIP_RECT:I = 0x6c

.field public static final blacklist MODIFIER_COLLAPSIBLE_PRIORITY:I = 0xeb

.field public static final blacklist MODIFIER_DRAW_CONTENT:I = 0xae

.field public static final blacklist MODIFIER_GRAPHICS_LAYER:I = 0xe0

.field public static final blacklist MODIFIER_HEIGHT:I = 0x43

.field public static final blacklist MODIFIER_HEIGHT_IN:I = 0xe8

.field public static final blacklist MODIFIER_MARQUEE:I = 0xe4

.field public static final blacklist MODIFIER_OFFSET:I = 0xdd

.field public static final blacklist MODIFIER_PADDING:I = 0x3a

.field public static final blacklist MODIFIER_RIPPLE:I = 0xe5

.field public static final blacklist MODIFIER_ROUNDED_CLIP_RECT:I = 0x36

.field public static final blacklist MODIFIER_SCROLL:I = 0xe2

.field public static final blacklist MODIFIER_TOUCH_CANCEL:I = 0xe1

.field public static final blacklist MODIFIER_TOUCH_DOWN:I = 0xdb

.field public static final blacklist MODIFIER_TOUCH_UP:I = 0xdc

.field public static final blacklist MODIFIER_VISIBILITY:I = 0xd3

.field public static final blacklist MODIFIER_WIDTH:I = 0x10

.field public static final blacklist MODIFIER_WIDTH_IN:I = 0xe7

.field public static final blacklist MODIFIER_ZINDEX:I = 0xdf

.field public static final blacklist NAMED_VARIABLE:I = 0x89

.field public static final blacklist PAINT_VALUES:I = 0x28

.field public static final blacklist PARTICLE_DEFINE:I = 0xa1

.field public static final blacklist PARTICLE_LOOP:I = 0xa3

.field public static final blacklist PARTICLE_PROCESS:I = 0xa2

.field public static final blacklist PATH_ADD:I = 0xa0

.field public static final blacklist PATH_COMBINE:I = 0xaf

.field public static final blacklist PATH_CREATE:I = 0x9f

.field public static final blacklist PATH_EXPRESSION:I = 0xc1

.field public static final blacklist PATH_TWEEN:I = 0x9e

.field public static final blacklist PROFILE_ANDROIDX:I = 0x200

.field public static final blacklist PROFILE_ANDROID_NATIVE:I = 0x400

.field public static final blacklist PROFILE_BASELINE:I = 0x0

.field public static final blacklist PROFILE_DEPRECATED:I = 0x2

.field public static final blacklist PROFILE_EXPERIMENTAL:I = 0x1

.field public static final blacklist PROFILE_LOW_POWER:I = 0x8

.field public static final blacklist PROFILE_OEM:I = 0x4

.field public static final blacklist PROFILE_WEAR_WIDGETS:I = 0x800

.field public static final blacklist PROFILE_WIDGETS:I = 0x100

.field public static final blacklist REM:I = 0xb9

.field public static final blacklist ROOT_CONTENT_BEHAVIOR:I = 0x41

.field public static final blacklist ROOT_CONTENT_DESCRIPTION:I = 0x67

.field public static final blacklist RUN_ACTION:I = 0xec

.field public static final blacklist TEXT_FROM_FLOAT:I = 0x87

.field public static final blacklist TEXT_LENGTH:I = 0x9c

.field public static final blacklist TEXT_LOOKUP:I = 0x97

.field public static final blacklist TEXT_LOOKUP_INT:I = 0x99

.field public static final blacklist TEXT_MEASURE:I = 0x9b

.field public static final blacklist TEXT_MERGE:I = 0x88

.field public static final blacklist TEXT_SUBTEXT:I = 0xb6

.field public static final blacklist THEME:I = 0x3f

.field public static final blacklist TOUCH_EXPRESSION:I = 0x9d

.field public static final blacklist VALUE_FLOAT_CHANGE_ACTION:I = 0xde

.field public static final blacklist VALUE_FLOAT_EXPRESSION_CHANGE_ACTION:I = 0xe3

.field public static final blacklist VALUE_INTEGER_CHANGE_ACTION:I = 0xd4

.field public static final blacklist VALUE_INTEGER_EXPRESSION_CHANGE_ACTION:I = 0xda

.field public static final blacklist VALUE_STRING_CHANGE_ACTION:I = 0xd5

.field public static final blacklist WAKE_IN:I = 0xbf

.field static blacklist sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sMapV7:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field static blacklist sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sMapV7AndroidXDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sMapV7AndroidXExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sMapV7WidgetsDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sMapV7WidgetsExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createMapV6()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    .line 433
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/Operations;->fillDefaultVersionMap(Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;)V

    .line 434
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda0;-><init>()V

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-object v0
.end method

.method private static blacklist createMapV7(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;>;I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;>;"
        }
    .end annotation

    .line 514
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    .line 518
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/Operations;->fillDefaultVersionMap(Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;)V

    .line 520
    if-eqz p1, :cond_10f

    .line 523
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_38

    .line 525
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    .line 526
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7_Androidx()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 528
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2a

    .line 529
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7_Androidx_Experimental()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 531
    :cond_2a
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_35

    .line 532
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7_Androidx_Deprecated()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 534
    :cond_35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_38
    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_61

    .line 537
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    .line 538
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7_Widgets()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 540
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_53

    .line 541
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7_Widgets_Experimental()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 543
    :cond_53
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5e

    .line 544
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7_Widgets_Deprecated()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 546
    :cond_5e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_61
    and-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_107

    .line 553
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_78

    .line 554
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    goto/16 :goto_10f

    .line 560
    :cond_78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 561
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 562
    move v7, v3

    :goto_8e
    const/16 v8, 0xff

    if-ge v7, v8, :cond_c4

    .line 563
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    .line 564
    if-eqz v8, :cond_c1

    .line 565
    nop

    .line 566
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 567
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_b5

    .line 566
    :cond_b4
    move v8, v3

    .line 569
    :goto_b5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_c1
    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 572
    :cond_c4
    goto :goto_81

    .line 573
    :cond_c5
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10f

    .line 574
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 575
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 576
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 578
    if-ne v6, v4, :cond_106

    .line 579
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_106
    goto :goto_dd

    .line 549
    :cond_107
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Android native profiles are defined externally"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 588
    :cond_10f
    :goto_10f
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda2;-><init>()V

    const/16 v2, 0xb9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda3;-><init>()V

    const/16 v2, 0xba

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda4;-><init>()V

    const/16 v2, 0xbb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda5;-><init>()V

    const/16 v2, 0xbc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 595
    if-eqz p0, :cond_141

    .line 596
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-object p0

    .line 600
    :cond_141
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 601
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-object p0
.end method

.method private static blacklist createMapV7_Androidx()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez v0, :cond_8f

    .line 441
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 442
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda6;-><init>()V

    const/16 v2, 0xb5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda7;-><init>()V

    const/16 v2, 0xb6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda8;-><init>()V

    const/16 v2, 0xb7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda9;-><init>()V

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda10;-><init>()V

    const/16 v2, 0xb8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda0;-><init>()V

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda137;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda137;-><init>()V

    const/16 v2, 0xbd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda11;-><init>()V

    const/16 v2, 0xbe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda12;-><init>()V

    const/16 v2, 0xbf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda13;-><init>()V

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda14;-><init>()V

    const/16 v2, 0xc1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_8f
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidX:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object v0
.end method

.method private static blacklist createMapV7_Androidx_Deprecated()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez v0, :cond_17

    .line 467
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 468
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_17
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object v0
.end method

.method private static blacklist createMapV7_Androidx_Experimental()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 458
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez v0, :cond_b

    .line 459
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 462
    :cond_b
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7AndroidXExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object v0
.end method

.method private static blacklist createMapV7_Widgets()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez v0, :cond_77

    .line 475
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 476
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda6;-><init>()V

    const/16 v2, 0xb5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda7;-><init>()V

    const/16 v2, 0xb6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda8;-><init>()V

    const/16 v2, 0xb7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda9;-><init>()V

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda10;-><init>()V

    const/16 v2, 0xb8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda11;-><init>()V

    const/16 v2, 0xbe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda12;-><init>()V

    const/16 v2, 0xbf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda13;-><init>()V

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda14;-><init>()V

    const/16 v2, 0xc1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_77
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7Widgets:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object v0
.end method

.method private static blacklist createMapV7_Widgets_Deprecated()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez v0, :cond_17

    .line 499
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 500
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_17
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsDeprecated:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object v0
.end method

.method private static blacklist createMapV7_Widgets_Experimental()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 490
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez v0, :cond_b

    .line 491
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 494
    :cond_b
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7WidgetsExperimental:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object v0
.end method

.method private static blacklist fillDefaultVersionMap(Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;)V"
        }
    .end annotation

    .line 614
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda15;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda48;-><init>()V

    const/16 v1, 0x42

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda59;-><init>()V

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda70;-><init>()V

    const/16 v1, 0xa7

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda81;-><init>()V

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda92;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda103;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda114;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda114;-><init>()V

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda125;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda125;-><init>()V

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda136;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda136;-><init>()V

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 625
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda26;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda37;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda40;-><init>()V

    const/16 v1, 0x38

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda41;-><init>()V

    const/16 v1, 0x7c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda42;-><init>()V

    const/16 v1, 0x2a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda43;-><init>()V

    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda44;-><init>()V

    const/16 v1, 0x35

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda45;-><init>()V

    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda46;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda47;-><init>()V

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda49;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda50;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda51;-><init>()V

    const/16 v1, 0x83

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda52;-><init>()V

    const/16 v1, 0x81

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 639
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda53;-><init>()V

    const/16 v1, 0x82

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda54;-><init>()V

    const/16 v1, 0x7e

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda55;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda56;-><init>()V

    const/16 v1, 0x7f

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda57;-><init>()V

    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda58;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda60;-><init>()V

    const/16 v1, 0x50

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda61;-><init>()V

    const/16 v1, 0x51

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda62;-><init>()V

    const/16 v1, 0x85

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda63;-><init>()V

    const/16 v1, 0x86

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda64;-><init>()V

    const/16 v1, 0x87

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda65;-><init>()V

    const/16 v1, 0x88

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 651
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda66;-><init>()V

    const/16 v1, 0x89

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda67;-><init>()V

    const/16 v1, 0x8a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda68;-><init>()V

    const/16 v1, 0x8c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda69;-><init>()V

    const/16 v1, 0x90

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda71;-><init>()V

    const/16 v1, 0x8f

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda72;-><init>()V

    const/16 v1, 0x91

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda73;-><init>()V

    const/16 v1, 0x92

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 658
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda74;-><init>()V

    const/16 v1, 0x93

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda75;-><init>()V

    const/16 v1, 0x94

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 660
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda76;-><init>()V

    const/16 v1, 0x95

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda77;-><init>()V

    const/16 v1, 0x97

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda78;-><init>()V

    const/16 v1, 0x99

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 664
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda79;-><init>()V

    const/16 v1, 0xd7

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda80;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda82;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 671
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda83;-><init>()V

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda84;-><init>()V

    const/16 v1, 0x43

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda85;-><init>()V

    const/16 v1, 0xe7

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda86;-><init>()V

    const/16 v1, 0xe8

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda87;-><init>()V

    const/16 v1, 0xeb

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 676
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda88;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda89;-><init>()V

    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda90;-><init>()V

    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda91;-><init>()V

    const/16 v1, 0x36

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 680
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda93;-><init>()V

    const/16 v1, 0x6c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda94;-><init>()V

    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda95;-><init>()V

    const/16 v1, 0xdb

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda96;-><init>()V

    const/16 v1, 0xdc

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 684
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda97;-><init>()V

    const/16 v1, 0xe1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda98;-><init>()V

    const/16 v1, 0xd3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda99;-><init>()V

    const/16 v1, 0xdd

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda100;-><init>()V

    const/16 v1, 0xdf

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda101;-><init>()V

    const/16 v1, 0xe0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda102;-><init>()V

    const/16 v1, 0xe2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda104;-><init>()V

    const/16 v1, 0xe4

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda105;-><init>()V

    const/16 v1, 0xe5

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda106;-><init>()V

    const/16 v1, 0xae

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda107;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda107;-><init>()V

    const/16 v1, 0xd6

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda108;-><init>()V

    const/16 v1, 0xec

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda109;-><init>()V

    const/16 v1, 0xd1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 698
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda110;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda110;-><init>()V

    const/16 v1, 0xd8

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 699
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda111;-><init>()V

    const/16 v1, 0xd2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda112;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda112;-><init>()V

    const/16 v1, 0xd4

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda113;-><init>()V

    const/16 v1, 0xda

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda115;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda115;-><init>()V

    const/16 v1, 0xd5

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 705
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda116;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda116;-><init>()V

    const/16 v1, 0xde

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda117;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda117;-><init>()V

    const/16 v1, 0xe3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda118;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda118;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda119;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda119;-><init>()V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda120;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda120;-><init>()V

    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda121;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda121;-><init>()V

    const/16 v1, 0xb0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda122;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda122;-><init>()V

    const/16 v1, 0xcc

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda123;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda123;-><init>()V

    const/16 v1, 0xe9

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda124;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda124;-><init>()V

    const/16 v1, 0xcb

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda126;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda126;-><init>()V

    const/16 v1, 0xe6

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda127;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda127;-><init>()V

    const/16 v1, 0xcd

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 719
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda128;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda128;-><init>()V

    const/16 v1, 0xcf

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 720
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda129;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda129;-><init>()V

    const/16 v1, 0xd0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda130;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda130;-><init>()V

    const/16 v1, 0xea

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda131;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda131;-><init>()V

    const/16 v1, 0xd9

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda132;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda132;-><init>()V

    const/16 v1, 0x8b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda133;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda133;-><init>()V

    const/16 v1, 0x96

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda134;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda134;-><init>()V

    const/16 v1, 0x98

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda135;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda135;-><init>()V

    const/16 v1, 0x9a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda16;-><init>()V

    const/16 v1, 0x9b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 729
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda17;-><init>()V

    const/16 v1, 0x9c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda18;-><init>()V

    const/16 v1, 0x9d

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 731
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda19;-><init>()V

    const/16 v1, 0x9e

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda20;-><init>()V

    const/16 v1, 0x9f

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda21;-><init>()V

    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda22;-><init>()V

    const/16 v1, 0xa4

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 735
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda23;-><init>()V

    const/16 v1, 0xa5

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 736
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda24;-><init>()V

    const/16 v1, 0xa1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 737
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda25;-><init>()V

    const/16 v1, 0xa3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda27;-><init>()V

    const/16 v1, 0xa6

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda28;-><init>()V

    const/16 v1, 0xa8

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda29;-><init>()V

    const/16 v1, 0xad

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda30;-><init>()V

    const/16 v1, 0xfa

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda31;-><init>()V

    const/16 v1, 0xab

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda32;-><init>()V

    const/16 v1, 0xaa

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda33;-><init>()V

    const/16 v1, 0xac

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda34;-><init>()V

    const/16 v1, 0xaf

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda35;-><init>()V

    const/16 v1, 0xb1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda36;-><init>()V

    const/16 v1, 0xb2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda38;-><init>()V

    const/16 v1, 0xb3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda39;-><init>()V

    const/16 v1, 0xb4

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-void
.end method

.method public static blacklist getOperations(II)Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation

    .line 416
    packed-switch p0, :pswitch_data_38

    .line 428
    const/4 p0, 0x0

    return-object p0

    .line 418
    :pswitch_5
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 419
    :cond_15
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object p0

    sput-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    .line 421
    :cond_1d
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object p0

    .line 423
    :pswitch_2a
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez p0, :cond_34

    .line 424
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV6()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object p0

    sput-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 426
    :cond_34
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x6
        :pswitch_2a
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist valid(III)Z
    .registers 6

    .line 387
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_52

    .line 404
    return v1

    .line 389
    :pswitch_6
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    if-nez p1, :cond_12

    .line 390
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    .line 392
    :cond_12
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 393
    if-nez p1, :cond_34

    .line 394
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV7(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    .line 395
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV7:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 397
    :cond_34
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    return v0

    .line 399
    :pswitch_3d
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    if-nez p1, :cond_47

    .line 400
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/Operations;->createMapV6()Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object p1

    sput-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 402
    :cond_47
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/Operations;->sMapV6:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    :goto_51
    return v0

    :pswitch_data_52
    .packed-switch 0x6
        :pswitch_3d
        :pswitch_6
    .end packed-switch
.end method
