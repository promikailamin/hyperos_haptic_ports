.class public Landroid/graphics/drawable/LevelListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "LevelListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    }
.end annotation


# instance fields
.field private greylist-max-o mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

.field private greylist-max-o mMutated:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    .line 67
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V
    .registers 4

    .line 247
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 248
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    .line 249
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 250
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    .line 251
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    nop

    .line 103
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 105
    :cond_7
    :goto_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_97

    .line 106
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_16

    const/4 v4, 0x3

    if-eq v2, v4, :cond_97

    .line 108
    :cond_16
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1a

    .line 109
    goto :goto_7

    .line 112
    :cond_1a
    if-gt v3, v0, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 113
    goto :goto_7

    .line 116
    :cond_2a
    sget-object v2, Lcom/android/internal/R$styleable;->LevelListDrawableItem:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/LevelListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 121
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 123
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 126
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    if-ltz v6, :cond_7a

    .line 134
    if-eqz v3, :cond_49

    .line 135
    invoke-virtual {p1, v3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_57

    .line 137
    :cond_49
    :goto_49
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_51

    goto :goto_49

    .line 139
    :cond_51
    if-ne v2, v4, :cond_5d

    .line 145
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 148
    :goto_57
    iget-object v3, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v3, v5, v6, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 149
    goto :goto_7

    .line 140
    :cond_5d
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_7a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": <item> tag requires a \'maxLevel\' attribute"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_97
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    .line 152
    return-void
.end method


# virtual methods
.method public whitelist addLevel(IILandroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 70
    if-eqz p3, :cond_e

    .line 71
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    .line 75
    :cond_e
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 172
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    .line 174
    return-void
.end method

.method bridge synthetic blacklist cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->cloneConstantState()Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o cloneConstantState()Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .registers 4

    .line 165
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableContainer;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 92
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LevelListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 95
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 156
    iget-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-static {v0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->-$$Nest$mmutate(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    .line 160
    :cond_12
    return-object p0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->indexOfLevel(I)I

    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->selectDrawable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 83
    const/4 p1, 0x1

    return p1

    .line 85
    :cond_e
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onLevelChange(I)Z

    move-result p1

    return p1
.end method

.method protected whitelist setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    .line 240
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 242
    instance-of v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    if-eqz v0, :cond_b

    .line 243
    check-cast p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    .line 245
    :cond_b
    return-void
.end method
