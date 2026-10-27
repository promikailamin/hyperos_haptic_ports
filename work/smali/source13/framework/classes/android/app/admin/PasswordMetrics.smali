.class public final Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$ComplexityBucket;,
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_DIGIT:I = 0x2

.field private static final greylist-max-o CHAR_LOWER_CASE:I = 0x0

.field private static final greylist-max-o CHAR_SYMBOL:I = 0x3

.field private static final greylist-max-o CHAR_UPPER_CASE:I = 0x1

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MAX_ALLOWED_SEQUENCE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "PasswordMetrics"


# instance fields
.field public blacklist credType:I

.field public greylist-max-o length:I

.field public greylist-max-o letters:I

.field public greylist-max-o lowerCase:I

.field public greylist-max-o nonLetter:I

.field public blacklist nonNumeric:I

.field public greylist-max-o numeric:I

.field public blacklist seqLength:I

.field public greylist-max-o symbols:I

.field public greylist-max-o upperCase:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "credType"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 89
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 90
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 91
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 92
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 93
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 94
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 95
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 97
    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 100
    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIII)V
    .registers 12
    .param p1, "credType"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "upperCase"    # I
    .param p5, "lowerCase"    # I
    .param p6, "numeric"    # I
    .param p7, "symbols"    # I
    .param p8, "nonLetter"    # I
    .param p9, "nonNumeric"    # I
    .param p10, "seqLength"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 89
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 90
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 91
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 92
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 93
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 94
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 95
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 97
    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 105
    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 106
    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 107
    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 108
    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 109
    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 110
    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 111
    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 112
    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 113
    iput p9, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 114
    iput p10, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 115
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/PasswordMetrics;)V
    .registers 13
    .param p1, "other"    # Landroid/app/admin/PasswordMetrics;

    .line 118
    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v5, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v6, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v7, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v8, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v9, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v10, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    .line 120
    return-void
.end method

.method public static blacklist applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "isPin"    # Z
    .param p2, "complexity"    # I

    .line 714
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;
    .registers 6
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "isPin"    # Z
    .param p2, "bucket"    # Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    .line 719
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, p0}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/app/admin/PasswordMetrics;)V

    .line 721
    .local v0, "minMetrics":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v1

    if-nez v1, :cond_14

    .line 722
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 725
    :cond_14
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 727
    return-object v0
.end method

.method private static greylist-max-o categoryChar(C)I
    .registers 2
    .param p0, "c"    # C

    .line 324
    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 325
    :cond_a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_14

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 326
    :cond_14
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1e

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1e

    const/4 v0, 0x2

    return v0

    .line 327
    :cond_1e
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V
    .registers 8
    .param p0, "minMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "bucket"    # Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    .param p2, "actualMetrics"    # Landroid/app/admin/PasswordMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "Landroid/app/admin/PasswordMetrics$ComplexityBucket;",
            "Landroid/app/admin/PasswordMetrics;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;)V"
        }
    .end annotation

    .line 625
    .local p3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/PasswordValidationError;>;"
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v0, v1, :cond_f

    .line 626
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_f
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const/4 v1, 0x0

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_41

    .line 632
    invoke-virtual {p1, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v0

    .line 633
    .local v0, "allNumericMinimumLength":I
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-le v0, v2, :cond_41

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-le v0, v2, :cond_41

    iget v2, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v2, v0, :cond_41

    .line 636
    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v0    # "allNumericMinimumLength":I
    :cond_41
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ge v0, v2, :cond_50

    .line 641
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_50
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ge v0, v2, :cond_60

    .line 644
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_60
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ge v0, v2, :cond_70

    .line 647
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0x9

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_70
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ge v0, v2, :cond_80

    .line 650
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_80
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ge v0, v2, :cond_90

    .line 653
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xb

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_90
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ge v0, v2, :cond_a0

    .line 656
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xc

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_a0
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ge v0, v2, :cond_b0

    .line 659
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xd

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_b0
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-le v0, v2, :cond_bf

    .line 662
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_bf
    return-void
.end method

.method public static blacklist complexityLevelToMinQuality(I)I
    .registers 2
    .param p0, "complexity"    # I

    .line 386
    sparse-switch p0, :sswitch_data_c

    .line 394
    const/4 v0, 0x0

    return v0

    .line 389
    :sswitch_5
    const/high16 v0, 0x30000

    return v0

    .line 391
    :sswitch_8
    const/high16 v0, 0x10000

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x10000 -> :sswitch_8
        0x30000 -> :sswitch_5
        0x50000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_44

    .line 208
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 209
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 210
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 211
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 213
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v1

    .line 206
    invoke-static {v0, v1}, Landroid/app/admin/PasswordMetrics;->computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;
    .registers 24
    .param p0, "password"    # [B
    .param p1, "isPin"    # Z

    .line 222
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 223
    .local v1, "letters":I
    const/4 v2, 0x0

    .line 224
    .local v2, "upperCase":I
    const/4 v3, 0x0

    .line 225
    .local v3, "lowerCase":I
    const/4 v4, 0x0

    .line 226
    .local v4, "numeric":I
    const/4 v5, 0x0

    .line 227
    .local v5, "symbols":I
    const/4 v6, 0x0

    .line 228
    .local v6, "nonLetter":I
    const/4 v7, 0x0

    .line 229
    .local v7, "nonNumeric":I
    array-length v15, v0

    .line 230
    .local v15, "length":I
    array-length v8, v0

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v8, :cond_36

    aget-byte v10, v0, v9

    .line 231
    .local v10, "b":B
    int-to-char v11, v10

    invoke-static {v11}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v11

    packed-switch v11, :pswitch_data_56

    goto :goto_33

    .line 247
    :pswitch_19
    add-int/lit8 v5, v5, 0x1

    .line 248
    add-int/lit8 v6, v6, 0x1

    .line 249
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 243
    :pswitch_20
    add-int/lit8 v4, v4, 0x1

    .line 244
    add-int/lit8 v6, v6, 0x1

    .line 245
    goto :goto_33

    .line 238
    :pswitch_25
    add-int/lit8 v1, v1, 0x1

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 240
    add-int/lit8 v7, v7, 0x1

    .line 241
    goto :goto_33

    .line 233
    :pswitch_2c
    add-int/lit8 v1, v1, 0x1

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    add-int/lit8 v7, v7, 0x1

    .line 236
    nop

    .line 230
    .end local v10    # "b":B
    :goto_33
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 254
    :cond_36
    if-eqz p1, :cond_3a

    const/4 v8, 0x3

    goto :goto_3b

    :cond_3a
    const/4 v8, 0x4

    :goto_3b
    move v9, v8

    .line 255
    .local v9, "credType":I
    invoke-static/range {p0 .. p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence([B)I

    move-result v19

    .line 256
    .local v19, "seqLength":I
    new-instance v20, Landroid/app/admin/PasswordMetrics;

    move-object/from16 v8, v20

    move v10, v15

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move/from16 v21, v15

    .end local v15    # "length":I
    .local v21, "length":I
    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v19

    invoke-direct/range {v8 .. v18}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-object v20

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_25
        :pswitch_20
        :pswitch_19
    .end packed-switch
.end method

.method private static blacklist hasInvalidCharacters([B)Z
    .registers 7
    .param p0, "password"    # [B

    .line 144
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget-byte v3, p0, v2

    .line 145
    .local v3, "b":B
    int-to-char v4, v3

    .line 146
    .local v4, "c":C
    const/16 v5, 0x20

    if-lt v4, v5, :cond_14

    const/16 v5, 0x7f

    if-le v4, v5, :cond_11

    goto :goto_14

    .line 144
    .end local v3    # "b":B
    .end local v4    # "c":C
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 147
    .restart local v3    # "b":B
    .restart local v4    # "c":C
    :cond_14
    :goto_14
    const/4 v0, 0x1

    return v0

    .line 150
    .end local v3    # "b":B
    .end local v4    # "c":C
    :cond_16
    return v1
.end method

.method public static blacklist isNumericOnly(Ljava/lang/String;)Z
    .registers 5
    .param p0, "password"    # Ljava/lang/String;

    .line 736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 737
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 738
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    return v1

    .line 737
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 740
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o maxDiffCategory(I)I
    .registers 2
    .param p0, "category"    # I

    .line 331
    packed-switch p0, :pswitch_data_a

    .line 338
    const/4 v0, 0x0

    return v0

    .line 336
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 334
    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist maxLengthSequence([B)I
    .registers 13
    .param p0, "bytes"    # [B

    .line 278
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    .line 279
    :cond_5
    aget-byte v0, p0, v1

    int-to-char v0, v0

    .line 280
    .local v0, "previousChar":C
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    .line 281
    .local v1, "category":I
    const/4 v2, 0x0

    .line 282
    .local v2, "diff":I
    const/4 v3, 0x0

    .line 283
    .local v3, "hasDiff":Z
    const/4 v4, 0x0

    .line 284
    .local v4, "maxLength":I
    const/4 v5, 0x0

    .line 285
    .local v5, "startSequence":I
    const/4 v6, 0x1

    .local v6, "current":I
    :goto_11
    array-length v7, p0

    if-ge v6, v7, :cond_46

    .line 286
    aget-byte v7, p0, v6

    int-to-char v7, v7

    .line 287
    .local v7, "currentChar":C
    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v8

    .line 288
    .local v8, "categoryCurrent":I
    sub-int v9, v7, v0

    .line 289
    .local v9, "currentDiff":I
    if-ne v8, v1, :cond_39

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2a

    goto :goto_39

    .line 296
    :cond_2a
    if-eqz v3, :cond_36

    if-eq v9, v2, :cond_36

    .line 297
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 298
    add-int/lit8 v5, v6, -0x1

    .line 300
    :cond_36
    move v2, v9

    .line 301
    const/4 v3, 0x1

    goto :goto_42

    .line 290
    :cond_39
    :goto_39
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 291
    move v5, v6

    .line 292
    const/4 v3, 0x0

    .line 293
    move v1, v8

    .line 303
    :goto_42
    move v0, v7

    .line 285
    .end local v7    # "currentChar":C
    .end local v8    # "categoryCurrent":I
    .end local v9    # "currentDiff":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 305
    .end local v6    # "current":I
    :cond_46
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 306
    return v4
.end method

.method public static blacklist merge(Ljava/util/List;)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;)",
            "Landroid/app/admin/PasswordMetrics;"
        }
    .end annotation

    .line 348
    .local p0, "metrics":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PasswordMetrics;>;"
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 349
    .local v0, "result":Landroid/app/admin/PasswordMetrics;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 350
    .local v2, "m":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {v0, v2}, Landroid/app/admin/PasswordMetrics;->maxWith(Landroid/app/admin/PasswordMetrics;)V

    .line 351
    .end local v2    # "m":Landroid/app/admin/PasswordMetrics;
    goto :goto_a

    .line 353
    :cond_1a
    return-object v0
.end method

.method private blacklist removeOverlapping()V
    .registers 10

    .line 675
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    add-int/2addr v0, v1

    .line 678
    .local v0, "indirectLetters":I
    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v1, v2

    .line 681
    .local v1, "indirectNonLetter":I
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 682
    .local v2, "effectiveLetters":I
    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v3, v2

    .line 686
    .local v3, "indirectNonNumeric":I
    iget v4, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 687
    .local v4, "effectiveNonLetter":I
    iget v5, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 688
    .local v5, "effectiveNonNumeric":I
    add-int v6, v2, v4

    iget v7, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 691
    .local v6, "indirectLength":I
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v8, 0x0

    if-lt v0, v7, :cond_2f

    .line 692
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 694
    :cond_2f
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-lt v1, v7, :cond_35

    .line 695
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 697
    :cond_35
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lt v3, v7, :cond_3b

    .line 698
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 700
    :cond_3b
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-lt v6, v7, :cond_41

    .line 701
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 703
    :cond_41
    return-void
.end method

.method public static blacklist sanitizeComplexityLevel(I)I
    .registers 3
    .param p0, "complexityLevel"    # I

    .line 130
    sparse-switch p0, :sswitch_data_1e

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid password complexity used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    return v0

    .line 135
    :sswitch_1d
    return p0

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x10000 -> :sswitch_1d
        0x30000 -> :sswitch_1d
        0x50000 -> :sswitch_1d
    .end sparse-switch
.end method

.method private blacklist satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z
    .registers 7
    .param p1, "bucket"    # Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    .line 496
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 497
    return v1

    .line 499
    :cond_a
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v2, :cond_14

    if-eq v0, v3, :cond_14

    .line 500
    return v4

    .line 502
    :cond_14
    invoke-virtual {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-gt v0, v3, :cond_2f

    :cond_1e
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v2, :cond_26

    move v2, v4

    goto :goto_27

    :cond_26
    move v2, v1

    .line 503
    :goto_27
    invoke-virtual {p1, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    if-lt v0, v2, :cond_2f

    move v1, v4

    goto :goto_30

    :cond_2f
    nop

    .line 502
    :goto_30
    return v1
.end method

.method public static blacklist validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;
    .registers 7
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "minComplexity"    # I
    .param p2, "isPin"    # Z
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "IZ[B)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-static {p3}, Landroid/app/admin/PasswordMetrics;->hasInvalidCharacters([B)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 535
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 539
    :cond_12
    invoke-static {p3, p2}, Landroid/app/admin/PasswordMetrics;->computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 540
    .local v0, "enteredMetrics":Landroid/app/admin/PasswordMetrics;
    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;
    .registers 19
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "minComplexity"    # I
    .param p2, "actualMetrics"    # Landroid/app/admin/PasswordMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "I",
            "Landroid/app/admin/PasswordMetrics;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v2

    .line 558
    .local v2, "bucket":Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "appname"

    aput-object v7, v5, v6

    const/4 v8, 0x1

    const-string v9, "locksettings"

    aput-object v9, v5, v8

    const v10, 0x35e1f5e9

    invoke-virtual {v3, v10, v5}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v3

    .line 559
    .local v3, "eventBasicRules":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v5

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    const v7, 0x35e1f5ea

    invoke-virtual {v5, v7, v10}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v5

    .line 564
    .local v5, "eventDevicePolicy":Lcom/miui/misight/MiEventStub;
    iget v7, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v9, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    if-lt v7, v9, :cond_113

    .line 565
    invoke-virtual {v2, v7}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v7

    if-nez v7, :cond_3f

    goto/16 :goto_113

    .line 571
    :cond_3f
    iget v7, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v7, v9, :cond_4c

    if-eq v7, v10, :cond_4c

    .line 573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 576
    :cond_4c
    if-ne v7, v10, :cond_63

    iget v7, v1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v7, :cond_63

    .line 578
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 580
    new-instance v7, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v7, v4, v6}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 584
    :cond_63
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/PasswordValidationError;>;"
    iget v11, v1, Landroid/app/admin/PasswordMetrics;->length:I

    const/4 v12, 0x5

    const/16 v13, 0x10

    if-le v11, v13, :cond_77

    .line 586
    new-instance v11, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v11, v12, v13}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_77
    iget v11, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v11, v10, :cond_7d

    move v11, v8

    goto :goto_7e

    :cond_7d
    move v11, v6

    :goto_7e
    invoke-static {v0, v11, v2}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v11

    .line 593
    .local v11, "minMetrics":Landroid/app/admin/PasswordMetrics;
    iget v14, v11, Landroid/app/admin/PasswordMetrics;->length:I

    .line 594
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 593
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v11, Landroid/app/admin/PasswordMetrics;->length:I

    .line 595
    invoke-direct {v11}, Landroid/app/admin/PasswordMetrics;->removeOverlapping()V

    .line 597
    invoke-static {v11, v2, v1, v7}, Landroid/app/admin/PasswordMetrics;->comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V

    .line 600
    const-string v13, "PasswordMetrics"

    const-string v14, "Password error conform"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_112

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PasswordValidationError;

    .line 602
    .local v15, "r":Lcom/android/internal/widget/PasswordValidationError;
    iget v8, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    if-eq v8, v4, :cond_103

    iget v8, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    if-eq v8, v10, :cond_103

    iget v8, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    if-eq v8, v9, :cond_103

    iget v8, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    if-ne v8, v12, :cond_bc

    goto :goto_103

    .line 606
    :cond_bc
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordValidationError;

    iget v8, v8, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/4 v4, 0x1

    if-eq v8, v4, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/4 v8, 0x6

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/4 v8, 0x7

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v8, 0x8

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v8, 0x9

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v8, 0xa

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v8, 0xb

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v8, 0xc

    if-eq v4, v8, :cond_f5

    iget v4, v15, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v8, 0xd

    if-ne v4, v8, :cond_10f

    .line 611
    :cond_f5
    const-string/jumbo v4, "password not valid(devicepolicy)"

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    goto :goto_10f

    .line 604
    :cond_103
    :goto_103
    const-string v4, "Password not conform to basic rules"

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 614
    .end local v15    # "r":Lcom/android/internal/widget/PasswordValidationError;
    :cond_10f
    :goto_10f
    const/4 v4, 0x2

    const/4 v8, 0x1

    goto :goto_9f

    .line 617
    :cond_112
    return-object v7

    .line 567
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/PasswordValidationError;>;"
    .end local v11    # "minMetrics":Landroid/app/admin/PasswordMetrics;
    :cond_113
    :goto_113
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 569
    new-instance v4, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v7, 0x1

    invoke-direct {v4, v7, v6}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist determineComplexity()I
    .registers 6

    .line 512
    invoke-static {}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->values()[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 513
    .local v3, "bucket":Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    invoke-direct {p0, v3}, Landroid/app/admin/PasswordMetrics;->satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 514
    iget v0, v3, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->mComplexityLevel:I

    return v0

    .line 512
    .end local v3    # "bucket":Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 517
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to figure out complexity for a given metrics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 745
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 746
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    .line 747
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 748
    .local v2, "that":Landroid/app/admin/PasswordMetrics;
    iget v3, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-ne v3, v4, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    .line 746
    .end local v2    # "that":Landroid/app/admin/PasswordMetrics;
    :cond_54
    :goto_54
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 762
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 762
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist maxWith(Landroid/app/admin/PasswordMetrics;)V
    .registers 4
    .param p1, "other"    # Landroid/app/admin/PasswordMetrics;

    .line 362
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 363
    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 364
    return-void

    .line 366
    :cond_11
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 367
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 368
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 369
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 370
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 371
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 372
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 373
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 374
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 375
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return-void
.end method
