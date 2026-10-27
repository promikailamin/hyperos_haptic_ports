.class public Lcom/android/internal/widget/PeopleHelper;
.super Ljava/lang/Object;
.source "PeopleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
    }
.end annotation


# static fields
.field private static final blacklist COLOR_SHIFT_AMOUNT:F = 60.0f

.field private static final blacklist IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mAvatarSize:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-string v0, "[\\p{C}\\p{Z}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PeopleHelper;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    nop

    .line 62
    const-string v0, "[!@#$%&*()_+=|<>?{}\\[\\]~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PeopleHelper;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private blacklist findColor(Ljava/lang/CharSequence;I)I
    .registers 13

    .line 138
    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    .line 139
    invoke-interface {p1}, Ljava/lang/CharSequence;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr p1, v2

    .line 142
    float-to-double v2, p1

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double v6, v4, v0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    double-to-float p1, v2

    .line 143
    float-to-double v2, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    .line 144
    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p2, p1}, Lcom/android/internal/util/ContrastColorUtil;->getShiftedColor(II)I

    move-result p1

    return p1
.end method

.method public static blacklist getBadgeCutoutOutlineProvider(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewOutlineProvider;
    .registers 3

    .line 323
    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 327
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PeopleHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/PeopleHelper$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 324
    :cond_b
    :goto_b
    sget-object p0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    return-object p0
.end method

.method private blacklist getPureName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 152
    sget-object v0, Lcom/android/internal/widget/PeopleHelper;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic blacklist lambda$animateViewForceHidden$0(Lcom/android/internal/widget/CachingIconView;Z)V
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    return-void
.end method


# virtual methods
.method public blacklist animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V
    .registers 7

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->willBeForceHidden()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 84
    :goto_10
    if-ne p2, v0, :cond_13

    .line 86
    return-void

    .line 88
    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 89
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setWillBeForceHidden(Z)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 91
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_29

    move v3, v1

    goto :goto_2a

    :cond_29
    move v3, v2

    :goto_2a
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    if-eqz p2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    if-eqz p2, :cond_39

    const/4 v2, 0x0

    :cond_39
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    if-eqz p2, :cond_42

    sget-object v1, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_44

    :cond_42
    sget-object v1, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_44
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_57

    .line 97
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    goto :goto_63

    .line 99
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CachingIconView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 101
    :goto_63
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    return-void
.end method

.method public blacklist createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 12

    .line 116
    if-eqz p2, :cond_8b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    sget-object v0, Lcom/android/internal/widget/PeopleHelper;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 117
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_8b

    .line 122
    :cond_1b
    iget v0, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    iget v1, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    iget v2, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 125
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/PeopleHelper;->findColor(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 126
    iget-object p3, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object p3, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v4, v6

    const/4 p3, 0x1

    if-lez p1, :cond_4b

    move p1, p3

    goto :goto_4c

    :cond_4b
    const/4 p1, 0x0

    .line 129
    :goto_4c
    iget-object v4, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_53

    const/high16 p1, -0x1000000

    goto :goto_54

    :cond_53
    const/4 p1, -0x1

    :goto_54
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, p3, :cond_65

    iget p3, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float p3, p3

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_6b

    :cond_65
    iget p3, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float p3, p3

    const v4, 0x3e99999a    # 0.3f

    :goto_6b
    mul-float/2addr p3, v4

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object p3, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result p3

    add-float/2addr p1, p3

    div-float/2addr p1, v3

    sub-float p1, v2, p1

    float-to-int p1, p1

    .line 132
    int-to-float p1, p1

    iget-object p3, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v2, p1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 118
    :cond_8b
    :goto_8b
    iget-object p2, p0, Lcom/android/internal/widget/PeopleHelper;->mContext:Landroid/content/Context;

    const v0, 0x108070a

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    .line 119
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/PeopleHelper;->findColor(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 120
    return-object p2
.end method

.method public blacklist findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PeopleHelper;->getPureName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    return-object p2

    .line 167
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_19} :catch_1a

    return-object v0

    .line 168
    :catch_1a
    move-exception p1

    .line 169
    return-object p2
.end method

.method public blacklist findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    .line 177
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3e

    .line 180
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    aget-object v0, v0, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 186
    :cond_3e
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105026c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    .line 75
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    iget-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    return-void
.end method

.method public blacklist mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 200
    const/4 v2, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 201
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 202
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 203
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 204
    goto :goto_5c

    .line 206
    :cond_28
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 207
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    if-nez v5, :cond_36

    .line 209
    goto :goto_5c

    .line 211
    :cond_36
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 214
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 215
    if-eqz v6, :cond_4e

    .line 216
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v1, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_4e
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    goto :goto_5c

    .line 221
    :cond_56
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 226
    :cond_5f
    return-object v0
.end method

.method public blacklist mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;>;)",
            "Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;"
        }
    .end annotation

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 261
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 262
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    .line 263
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 264
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_79

    .line 265
    :cond_1f
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v4}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v4

    .line 266
    if-nez v4, :cond_2c

    goto :goto_79

    .line 267
    :cond_2c
    invoke-virtual {v4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 268
    invoke-virtual {v4}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-nez v4, :cond_79

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 269
    goto :goto_79

    .line 271
    :cond_3d
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 273
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 274
    if-nez v7, :cond_4f

    .line 275
    goto :goto_79

    .line 277
    :cond_4f
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 280
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 281
    if-eqz v8, :cond_6b

    .line 282
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_6b
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    goto :goto_79

    .line 287
    :cond_73
    invoke-virtual {v0, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {v1, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_79
    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 292
    :cond_7c
    new-instance p1, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;-><init>(Lcom/android/internal/widget/PeopleHelper;Ljava/util/Map;)V

    return-object p1
.end method

.method public blacklist maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_23

    .line 302
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 303
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 304
    if-eqz p2, :cond_1c

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 305
    :goto_1d
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setCanHideSenderIfFirst(Z)V

    .line 301
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 307
    :cond_23
    return-void
.end method
