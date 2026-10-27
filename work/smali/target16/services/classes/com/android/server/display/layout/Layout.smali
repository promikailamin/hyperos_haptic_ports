.class public Lcom/android/server/display/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# instance fields
.field public final mDisplays:Ljava/util/List;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/android/server/display/layout/Layout;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/DisplayAddress;)Z
    .registers 2

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V
    .registers 15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 89
    const-string v4, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v7, p7

    .line 122
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/layout/Layout;->contains(Landroid/view/DisplayAddress;)Z

    move-result v0

    const-string v1, "Layout"

    if-eqz v0, :cond_1f

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to add second definition for display-device: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    if-eqz p2, :cond_3d

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring attempt to add a second default display: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_3d
    const-string v0, ""

    if-nez p4, :cond_43

    move-object v4, v0

    goto :goto_45

    :cond_43
    move-object/from16 v4, p4

    :goto_45
    if-eqz p2, :cond_56

    .line 136
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_56

    .line 137
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default display should own DEFAULT_DISPLAY_GROUP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    :goto_56
    if-eqz p2, :cond_63

    if-nez v7, :cond_5b

    goto :goto_63

    .line 140
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default display cannot have a lead display"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_63
    :goto_63
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    move-object/from16 v0, p5

    .line 150
    invoke-interface {v0, p2}, Lcom/android/server/display/layout/DisplayIdProducer;->getId(Z)I

    move-result v2

    .line 152
    new-instance v0, Lcom/android/server/display/layout/Layout$Display;

    const/4 v11, 0x0

    move-object v1, p1

    move v3, p3

    move/from16 v6, p6

    move-object/from16 v5, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/server/display/layout/Layout$Display;-><init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/layout/Layout-IA;)V

    .line 156
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 143
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lead display address cannot be the same as display  address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 68
    instance-of v0, p1, Lcom/android/server/display/layout/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 71
    :cond_6
    check-cast p1, Lcom/android/server/display/layout/Layout;

    .line 72
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 73
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public getAt(I)Lcom/android/server/display/layout/Layout$Display;
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/layout/Layout$Display;

    return-object p0
.end method

.method public getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;
    .registers 5

    const/4 v0, 0x0

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 239
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 240
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_26

    .line 243
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/view/DisplayAddress$Physical;->isPortMatch(Landroid/view/DisplayAddress;Landroid/view/DisplayAddress;)Z

    move-result v2

    if-eqz v2, :cond_27

    :goto_26
    return-object v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getById(I)Lcom/android/server/display/layout/Layout$Display;
    .registers 5

    const/4 v0, 0x0

    .line 222
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 223
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 224
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    if-ne p1, v2, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasCyclicLeadDisplay(Lcom/android/server/display/layout/Layout$Display;)Z
    .registers 4

    .line 267
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :goto_5
    if-eqz p1, :cond_1f

    .line 270
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p0, 0x1

    return p0

    .line 273
    :cond_f
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    goto :goto_5

    .line 275
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    goto :goto_5

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public postProcessLocked()V
    .registers 6

    const/4 v0, 0x0

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a1

    .line 178
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 179
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1c

    .line 180
    invoke-static {v1, v3}, Lcom/android/server/display/layout/Layout$Display;->-$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V

    goto :goto_47

    .line 183
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    if-nez v2, :cond_26

    .line 185
    invoke-static {v1, v3}, Lcom/android/server/display/layout/Layout$Display;->-$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V

    goto :goto_47

    .line 188
    :cond_26
    invoke-virtual {p0, v2}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 193
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/server/display/layout/Layout;->hasCyclicLeadDisplay(Lcom/android/server/display/layout/Layout$Display;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 202
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/layout/Layout$Display;->-$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") has a cyclic lead display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lead display("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") should be in the same display group of the display("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find a lead display whose address is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a1
    return-void
.end method

.method public removeDisplayLocked(I)V
    .registers 2

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 165
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public size()I
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    goto :goto_28

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/layout/Layout;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
