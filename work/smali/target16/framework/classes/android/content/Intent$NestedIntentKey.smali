.class public Landroid/content/Intent$NestedIntentKey;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedIntentKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$NestedIntentKey$NestedIntentKeyType;
    }
.end annotation


# static fields
.field private static final blacklist NESTED_INTENT_KEY_TYPE_CLIP_DATA:I = 0x8

.field private static final blacklist NESTED_INTENT_KEY_TYPE_EXTRA_PARCEL:I = 0x1

.field private static final blacklist NESTED_INTENT_KEY_TYPE_EXTRA_PARCEL_ARRAY:I = 0x2

.field private static final blacklist NESTED_INTENT_KEY_TYPE_EXTRA_PARCEL_LIST:I = 0x4


# instance fields
.field private final blacklist mIndex:I

.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I
    .registers 1

    iget p0, p0, Landroid/content/Intent$NestedIntentKey;->mIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/Intent$NestedIntentKey;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I
    .registers 1

    iget p0, p0, Landroid/content/Intent$NestedIntentKey;->mType:I

    return p0
.end method

.method private constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 4

    .line 12489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12490
    iput p1, p0, Landroid/content/Intent$NestedIntentKey;->mType:I

    .line 12491
    iput-object p2, p0, Landroid/content/Intent$NestedIntentKey;->mKey:Ljava/lang/String;

    .line 12492
    iput p3, p0, Landroid/content/Intent$NestedIntentKey;->mIndex:I

    .line 12493
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12497
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 12498
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 12499
    :cond_12
    check-cast p1, Landroid/content/Intent$NestedIntentKey;

    .line 12500
    iget v2, p0, Landroid/content/Intent$NestedIntentKey;->mType:I

    iget v3, p1, Landroid/content/Intent$NestedIntentKey;->mType:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/content/Intent$NestedIntentKey;->mIndex:I

    iget v3, p1, Landroid/content/Intent$NestedIntentKey;->mIndex:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/content/Intent$NestedIntentKey;->mKey:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/Intent$NestedIntentKey;->mKey:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    .line 12498
    :cond_2d
    :goto_2d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 12505
    iget v0, p0, Landroid/content/Intent$NestedIntentKey;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent$NestedIntentKey;->mKey:Ljava/lang/String;

    iget v2, p0, Landroid/content/Intent$NestedIntentKey;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
