.class public final Landroid/hardware/display/DisplayViewport;
.super Ljava/lang/Object;
.source "DisplayViewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayViewport$ViewportType;
    }
.end annotation


# static fields
.field public static final blacklist VIEWPORT_EXTERNAL:I = 0x2

.field public static final blacklist VIEWPORT_INTERNAL:I = 0x1

.field public static final blacklist VIEWPORT_VIRTUAL:I = 0x3


# instance fields
.field public blacklist densityDpi:I

.field public greylist-max-o deviceHeight:I

.field public greylist-max-o deviceWidth:I

.field public greylist-max-o displayId:I

.field public blacklist isActive:Z

.field public final greylist-max-o logicalFrame:Landroid/graphics/Rect;

.field public greylist-max-o orientation:I

.field public final greylist-max-o physicalFrame:Landroid/graphics/Rect;

.field public blacklist physicalPort:Ljava/lang/Integer;

.field public blacklist type:I

.field public greylist-max-o uniqueId:Ljava/lang/String;

.field public greylist-max-o valid:Z

.field public blacklist xDpi:F

.field public blacklist yDpi:F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 3

    .line 193
    packed-switch p0, :pswitch_data_26

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :pswitch_1d
    const-string p0, "VIRTUAL"

    return-object p0

    .line 197
    :pswitch_20
    const-string p0, "EXTERNAL"

    return-object p0

    .line 195
    :pswitch_23
    const-string p0, "INTERNAL"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/hardware/display/DisplayViewport;)V
    .registers 4

    .line 94
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 95
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->isActive:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 96
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 97
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 98
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 101
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 102
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    .line 104
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->type:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->type:I

    .line 105
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    .line 106
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->xDpi:F

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->xDpi:F

    .line 107
    iget p1, p1, Landroid/hardware/display/DisplayViewport;->yDpi:F

    iput p1, p0, Landroid/hardware/display/DisplayViewport;->yDpi:F

    .line 108
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 121
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 122
    return v0

    .line 125
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/DisplayViewport;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 126
    return v2

    .line 129
    :cond_a
    check-cast p1, Landroid/hardware/display/DisplayViewport;

    .line 130
    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    iget-boolean v3, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-ne v1, v3, :cond_75

    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    iget-boolean v3, p1, Landroid/hardware/display/DisplayViewport;->isActive:Z

    if-ne v1, v3, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    if-ne v1, v3, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    if-ne v1, v3, :cond_75

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-ne v1, v3, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    if-ne v1, v3, :cond_75

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 138
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    iget-object v3, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    .line 139
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->type:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v1, v3, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    if-ne v1, v3, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->xDpi:F

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->xDpi:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_75

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->yDpi:F

    iget p1, p1, Landroid/hardware/display/DisplayViewport;->yDpi:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_75

    goto :goto_76

    :cond_75
    move v0, v2

    .line 130
    :goto_76
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 149
    nop

    .line 150
    iget-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 151
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 156
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 158
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 159
    iget-object v2, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    if-eqz v2, :cond_52

    .line 160
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 162
    :cond_52
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->type:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 164
    int-to-float v2, v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->xDpi:F

    add-float/2addr v0, v3

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 165
    int-to-float v2, v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->yDpi:F

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 166
    return v0
.end method

.method public greylist-max-o makeCopy()Landroid/hardware/display/DisplayViewport;
    .registers 2

    .line 114
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 115
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 116
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayViewport{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-static {v1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', physicalPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logicalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
