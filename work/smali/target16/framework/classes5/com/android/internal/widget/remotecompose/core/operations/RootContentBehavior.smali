.class public Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "RootContentBehavior.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;


# static fields
.field public static final blacklist ALIGNMENT_BOTTOM:I = 0x4

.field public static final blacklist ALIGNMENT_CENTER:I = 0x22

.field public static final blacklist ALIGNMENT_END:I = 0x40

.field public static final blacklist ALIGNMENT_HORIZONTAL_CENTER:I = 0x20

.field public static final blacklist ALIGNMENT_START:I = 0x10

.field public static final blacklist ALIGNMENT_TOP:I = 0x1

.field public static final blacklist ALIGNMENT_VERTICAL_CENTER:I = 0x2

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "RootContentBehavior"

.field public static final blacklist LAYOUT_HORIZONTAL_FIXED:I = 0x4

.field public static final blacklist LAYOUT_HORIZONTAL_MATCH_PARENT:I = 0x1

.field public static final blacklist LAYOUT_HORIZONTAL_WRAP_CONTENT:I = 0x2

.field public static final blacklist LAYOUT_MATCH_PARENT:I = 0x9

.field public static final blacklist LAYOUT_VERTICAL_FIXED:I = 0x20

.field public static final blacklist LAYOUT_VERTICAL_MATCH_PARENT:I = 0x8

.field public static final blacklist LAYOUT_VERTICAL_WRAP_CONTENT:I = 0x10

.field public static final blacklist LAYOUT_WRAP_CONTENT:I = 0x12

.field public static final blacklist NONE:I = 0x0

.field private static final blacklist OP_CODE:I = 0x41

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCROLL_HORIZONTAL:I = 0x1

.field public static final blacklist SCROLL_VERTICAL:I = 0x2

.field public static final blacklist SIZING_LAYOUT:I = 0x1

.field public static final blacklist SIZING_SCALE:I = 0x2

.field protected static final blacklist TAG:Ljava/lang/String; = "RootContentBehavior"


# instance fields
.field blacklist mAlignment:I

.field blacklist mMode:I

.field blacklist mScroll:I

.field blacklist mSizing:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 11

    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    .line 42
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    .line 44
    const/16 v1, 0x22

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    .line 46
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    .line 114
    packed-switch p1, :pswitch_data_d2

    .line 121
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RootContentBehaviorincorrect scroll value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 118
    :pswitch_2a
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    .line 119
    nop

    .line 123
    :goto_2d
    const/4 p1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_34

    .line 124
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    goto :goto_79

    .line 126
    :cond_34
    and-int/lit16 v1, p2, 0xf0

    .line 127
    and-int/lit8 v3, p2, 0xf

    .line 128
    const/16 v4, 0x10

    if-eq v1, v4, :cond_47

    const/16 v4, 0x20

    if-eq v1, v4, :cond_47

    const/16 v4, 0x40

    if-ne v1, v4, :cond_45

    goto :goto_47

    :cond_45
    move v4, v0

    goto :goto_48

    :cond_47
    :goto_47
    move v4, v2

    .line 132
    :goto_48
    if-eq v3, v2, :cond_4f

    if-eq v3, p1, :cond_4f

    const/4 v5, 0x4

    if-ne v3, v5, :cond_50

    :cond_4f
    move v0, v2

    .line 136
    :cond_50
    if-eqz v4, :cond_57

    if-eqz v0, :cond_57

    .line 137
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    goto :goto_79

    .line 139
    :cond_57
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RootContentBehaviorincorrect alignment  h: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " v: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    :goto_79
    packed-switch p3, :pswitch_data_dc

    .line 156
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RootContentBehaviorincorrect sizing value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a0

    .line 153
    :pswitch_95
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    .line 154
    goto :goto_a0

    .line 150
    :pswitch_98
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "RootContentBehaviorsizing_layout is not yet supported"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    nop

    .line 158
    :goto_a0
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    if-ne p2, v2, :cond_ae

    .line 159
    if-eqz p4, :cond_d1

    .line 160
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "RootContentBehaviormode for sizing layout is not yet supported"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d1

    .line 162
    :cond_ae
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    if-ne p2, p1, :cond_d1

    .line 163
    packed-switch p4, :pswitch_data_e4

    .line 173
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RootContentBehaviorincorrect mode for scale sizing, mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d1

    .line 170
    :pswitch_ce
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    .line 171
    nop

    .line 176
    :cond_d1
    :goto_d1
    return-void

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_98
        :pswitch_95
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
    .end packed-switch
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V
    .registers 6

    .line 235
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 237
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 238
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 239
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 240
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8

    .line 264
    const/16 v0, 0x41

    const-string v1, "RootContentBehavior"

    const-string v2, "Protocol Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 265
    const-string v0, "Describes the behaviour of the root"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 266
    const/4 v0, 0x0

    const-string/jumbo v1, "scroll"

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 267
    const-string v1, "SCROLL_HORIZONTAL"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 268
    const-string v1, "SCROLL_VERTICAL"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 269
    const-string v1, "alignment"

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 270
    const-string v1, "ALIGNMENT_TOP"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 271
    const-string v1, "ALIGNMENT_VERTICAL_CENTER"

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 272
    const-string v1, "ALIGNMENT_BOTTOM"

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 273
    const-string v1, "ALIGNMENT_START"

    const/16 v5, 0x10

    invoke-virtual {p0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 274
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 275
    const-string v1, "ALIGNMENT_END"

    const/16 v6, 0x40

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 276
    const-string/jumbo v1, "sizing"

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 277
    const-string v1, "SCALE_INSIDE"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 278
    const-string v1, "SCALE_FIT"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 279
    const-string v1, "SCALE_FILL_WIDTH"

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 280
    const-string v1, "SCALE_FILL_HEIGHT"

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 281
    const-string v1, "SCALE_CROP"

    const/4 v6, 0x5

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 282
    const-string v1, "SCALE_FILL_BOUNDS"

    const/4 v6, 0x6

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 283
    const-string v1, "mode"

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 284
    const-string v0, "LAYOUT_HORIZONTAL_MATCH_PARENT"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 285
    const-string v0, "LAYOUT_HORIZONTAL_WRAP_CONTENT"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 286
    const-string v0, "LAYOUT_HORIZONTAL_FIXED"

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 287
    const-string v0, "LAYOUT_VERTICAL_MATCH_PARENT"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 288
    const-string v0, "LAYOUT_VERTICAL_WRAP_CONTENT"

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 289
    const-string v0, "LAYOUT_VERTICAL_FIXED"

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 290
    const-string v0, "LAYOUT_MATCH_PARENT"

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 291
    const-string v0, "LAYOUT_WRAP_CONTENT"

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 292
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 221
    const/16 v0, 0x41

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 212
    const-string v0, "RootContentBehavior"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 253
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;-><init>(IIII)V

    .line 255
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 196
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setRootContentBehavior(IIII)V

    .line 197
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isInterestingForSemantics()Z
    .registers 2

    .line 296
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I
    .registers 3

    .line 307
    return p2
.end method

.method public blacklist scrollDirection()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    return v0
.end method

.method public blacklist supportsScrollByOffset()Z
    .registers 2

    .line 301
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROOT_CONTENT_BEHAVIOR scroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sizing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 180
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 181
    return-void
.end method
