.class public Landroid/content/IntentFilter;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentFilter$MalformedMimeTypeException;,
        Landroid/content/IntentFilter$AuthorityEntry;,
        Landroid/content/IntentFilter$InstantAppVisibility;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_STR:Ljava/lang/String; = "action"

.field private static final greylist-max-o AGLOB_STR:Ljava/lang/String; = "aglob"

.field private static final greylist-max-o AUTH_STR:Ljava/lang/String; = "auth"

.field private static final greylist-max-o AUTO_VERIFY_STR:Ljava/lang/String; = "autoVerify"

.field public static final blacklist BLOCK_NULL_ACTION_INTENTS:J = 0x117f6228L

.field private static final greylist-max-o CAT_STR:Ljava/lang/String; = "cat"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_BOOLEAN_ARRAY:[Z

.field private static final blacklist EMPTY_DOUBLE_ARRAY:[D

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field private static final blacklist EMPTY_LONG_ARRAY:[J

.field private static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final blacklist EXTRAS_STR:Ljava/lang/String; = "extras"

.field private static final blacklist GROUP_STR:Ljava/lang/String; = "group"

.field private static final greylist-max-o HOST_STR:Ljava/lang/String; = "host"

.field private static final greylist-max-o LITERAL_STR:Ljava/lang/String; = "literal"

.field public static final whitelist MATCH_ADJUSTMENT_MASK:I = 0xffff

.field public static final whitelist MATCH_ADJUSTMENT_NORMAL:I = 0x8000

.field public static final whitelist MATCH_CATEGORY_EMPTY:I = 0x100000

.field public static final whitelist MATCH_CATEGORY_HOST:I = 0x300000

.field public static final whitelist MATCH_CATEGORY_MASK:I = 0xfff0000

.field public static final whitelist MATCH_CATEGORY_PATH:I = 0x500000

.field public static final whitelist MATCH_CATEGORY_PORT:I = 0x400000

.field public static final whitelist MATCH_CATEGORY_SCHEME:I = 0x200000

.field public static final whitelist MATCH_CATEGORY_SCHEME_SPECIFIC_PART:I = 0x580000

.field public static final whitelist MATCH_CATEGORY_TYPE:I = 0x600000

.field private static final greylist-max-o NAME_STR:Ljava/lang/String; = "name"

.field public static final whitelist NO_MATCH_ACTION:I = -0x3

.field public static final whitelist NO_MATCH_CATEGORY:I = -0x4

.field public static final whitelist NO_MATCH_DATA:I = -0x2

.field public static final blacklist NO_MATCH_EXTRAS:I = -0x5

.field public static final whitelist NO_MATCH_TYPE:I = -0x1

.field private static final greylist-max-o PATH_STR:Ljava/lang/String; = "path"

.field private static final greylist-max-o PORT_STR:Ljava/lang/String; = "port"

.field private static final greylist-max-o PREFIX_STR:Ljava/lang/String; = "prefix"

.field public static final greylist-max-o SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final greylist-max-o SCHEME_HTTPS:Ljava/lang/String; = "https"

.field public static final blacklist SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final greylist-max-o SCHEME_STR:Ljava/lang/String; = "scheme"

.field private static final greylist-max-o SGLOB_STR:Ljava/lang/String; = "sglob"

.field private static final greylist-max-o SSP_STR:Ljava/lang/String; = "ssp"

.field private static final greylist-max-o STATE_NEED_VERIFY:I = 0x10

.field private static final greylist-max-o STATE_NEED_VERIFY_CHECKED:I = 0x100

.field private static final greylist-max-o STATE_VERIFIED:I = 0x1000

.field private static final greylist-max-o STATE_VERIFY_AUTO:I = 0x1

.field private static final blacklist STATIC_TYPE_STR:Ljava/lang/String; = "staticType"

.field private static final blacklist SUFFIX_STR:Ljava/lang/String; = "suffix"

.field public static final whitelist SYSTEM_HIGH_PRIORITY:I = 0x3e8

.field public static final whitelist SYSTEM_LOW_PRIORITY:I = -0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "IntentFilter"

.field private static final greylist-max-o TYPE_STR:Ljava/lang/String; = "type"

.field private static final blacklist URI_RELATIVE_FILTER_GROUP_STR:Ljava/lang/String; = "uriRelativeFilterGroup"

.field public static final greylist-max-o VISIBILITY_EXPLICIT:I = 0x1

.field public static final greylist-max-o VISIBILITY_IMPLICIT:I = 0x2

.field public static final greylist-max-o VISIBILITY_NONE:I = 0x0

.field public static final blacklist WILDCARD:Ljava/lang/String; = "*"

.field public static final blacklist WILDCARD_PATH:Ljava/lang/String; = "/*"


# instance fields
.field private final greylist mActions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataSchemeSpecificParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataSchemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHasDynamicPartialTypes:Z

.field private blacklist mHasStaticPartialTypes:Z

.field private greylist-max-o mInstantAppVisibility:I

.field private blacklist mMimeGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mOrder:I

.field private greylist-max-o mPriority:I

.field private blacklist mStaticDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUriRelativeFilterGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVerifyState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$7fG1TJiUF1fBw-hL3L4xfxnN-nI(Landroid/content/IntentFilter;Landroid/content/Intent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->lambda$asPredicate$2(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Uu5fhFIeIoazx3CCe3fFBGpH0zY(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/IntentFilter;->lambda$addDataType$0(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XGPPVIRv7sD8uHVVspJPr0VGbAs(Landroid/content/IntentFilter;Landroid/content/ContentResolver;Landroid/content/Intent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/IntentFilter;->lambda$asPredicateWithTypeResolution$3(Landroid/content/ContentResolver;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$tzLjLZQdJfH9PXkx_77HuuWcCv8(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/IntentFilter;->lambda$addDynamicDataType$1(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 185
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_INT_ARRAY:[I

    .line 186
    new-array v1, v0, [J

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_LONG_ARRAY:[J

    .line 187
    new-array v1, v0, [D

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_DOUBLE_ARRAY:[D

    .line 188
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 189
    new-array v0, v0, [Z

    sput-object v0, Landroid/content/IntentFilter;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 2937
    new-instance v0, Landroid/content/IntentFilter$1;

    invoke-direct {v0}, Landroid/content/IntentFilter$1;-><init>()V

    sput-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 471
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 472
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 473
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/IntentFilter;)V
    .registers 4

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 518
    iget v0, p1, Landroid/content/IntentFilter;->mPriority:I

    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 519
    iget v0, p1, Landroid/content/IntentFilter;->mOrder:I

    iput v0, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 520
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 521
    iget-object v0, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 524
    :cond_3b
    iget-object v0, p1, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 527
    :cond_48
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_55

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 530
    :cond_55
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 533
    :cond_62
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 536
    :cond_6f
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_7c

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 539
    :cond_7c
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_89

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 542
    :cond_89
    iget-object v0, p1, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_96

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 546
    :cond_96
    iget-object v0, p1, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_a3

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 549
    :cond_a3
    iget-object v0, p1, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_b0

    .line 550
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p1, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 552
    :cond_b0
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 553
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 554
    iget v0, p1, Landroid/content/IntentFilter;->mVerifyState:I

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 555
    iget p1, p1, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    iput p1, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    .line 556
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 3084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 3085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3086
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3087
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 3088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 3089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 3090
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3092
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    .line 3093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 3094
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3096
    :cond_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    .line 3097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 3098
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3100
    :cond_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    .line 3101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 3102
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3104
    :cond_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_86

    .line 3105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 3106
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3108
    :cond_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3109
    if-lez v0, :cond_a3

    .line 3110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 3111
    move v2, v1

    :goto_94
    if-ge v2, v0, :cond_a3

    .line 3112
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 3115
    :cond_a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3116
    if-lez v0, :cond_c0

    .line 3117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 3118
    move v2, v1

    :goto_b1
    if-ge v2, v0, :cond_c0

    .line 3119
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-direct {v4, p1}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 3122
    :cond_c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3123
    if-lez v0, :cond_dd

    .line 3124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 3125
    move v2, v1

    :goto_ce
    if-ge v2, v0, :cond_dd

    .line 3126
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 3129
    :cond_dd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 3130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_ec

    move v0, v2

    goto :goto_ed

    :cond_ec
    move v0, v1

    :goto_ed
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 3131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_f7

    move v0, v2

    goto :goto_f8

    :cond_f7
    move v0, v1

    :goto_f8
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 3132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    :goto_102
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 3133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 3134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 3135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_122

    .line 3136
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 3138
    :cond_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3139
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v2

    if-eqz v2, :cond_145

    if-lez v0, :cond_145

    .line 3140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 3141
    nop

    :goto_136
    if-ge v1, v0, :cond_145

    .line 3142
    iget-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v3, p1}, Landroid/content/UriRelativeFilterGroup;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 3145
    :cond_145
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 483
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 484
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 485
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 506
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 507
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 508
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private static greylist-max-o addStringToSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .registers 9

    .line 390
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v0

    if-ltz v0, :cond_7

    return-object p0

    .line 391
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_13

    .line 392
    new-array p0, v2, [Ljava/lang/String;

    .line 393
    aput-object p1, p0, v1

    .line 394
    aput v0, p2, p3

    .line 395
    return-object p0

    .line 397
    :cond_13
    aget v3, p2, p3

    .line 398
    array-length v4, p0

    if-ge v3, v4, :cond_1e

    .line 399
    aput-object p1, p0, v3

    .line 400
    add-int/2addr v3, v0

    aput v3, p2, p3

    .line 401
    return-object p0

    .line 404
    :cond_1e
    mul-int/lit8 v4, v3, 0x3

    div-int/2addr v4, v2

    add-int/2addr v4, v2

    new-array v2, v4, [Ljava/lang/String;

    .line 405
    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    nop

    .line 407
    aput-object p1, v2, v3

    .line 408
    add-int/2addr v3, v0

    aput v3, p2, p3

    .line 409
    return-object v2
.end method

.method public static whitelist create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .registers 3

    .line 461
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 462
    :catch_6
    move-exception p0

    .line 463
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Bad MIME type"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 6

    .line 3221
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 3222
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 3223
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 3224
    return v2

    .line 3226
    :cond_c
    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 3227
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3228
    return v2

    .line 3226
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3231
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 3232
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 3233
    if-eq v0, v1, :cond_28

    .line 3234
    return v2

    .line 3236
    :cond_28
    move v1, v2

    :goto_29
    if-ge v1, v0, :cond_39

    .line 3237
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 3238
    return v2

    .line 3236
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 3241
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 3242
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 3243
    if-eq v0, v1, :cond_44

    .line 3244
    return v2

    .line 3246
    :cond_44
    move v1, v2

    :goto_45
    if-ge v1, v0, :cond_55

    .line 3247
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 3248
    return v2

    .line 3246
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 3251
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 3252
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 3253
    if-eq v0, v1, :cond_60

    .line 3254
    return v2

    .line 3256
    :cond_60
    move v1, v2

    :goto_61
    if-ge v1, v0, :cond_71

    .line 3257
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 3258
    return v2

    .line 3256
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 3261
    :cond_71
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 3262
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 3263
    if-eq v0, v1, :cond_7c

    .line 3264
    return v2

    .line 3266
    :cond_7c
    move v1, v2

    :goto_7d
    if-ge v1, v0, :cond_8d

    .line 3267
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 3268
    return v2

    .line 3266
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 3271
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 3272
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 3273
    if-eq v0, v1, :cond_98

    .line 3274
    return v2

    .line 3276
    :cond_98
    move v1, v2

    :goto_99
    if-ge v1, v0, :cond_a9

    .line 3277
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 3278
    return v2

    .line 3276
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 3281
    :cond_a9
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 3282
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 3283
    if-eq v0, v1, :cond_b4

    .line 3284
    return v2

    .line 3286
    :cond_b4
    move v1, v2

    :goto_b5
    if-ge v1, v0, :cond_c5

    .line 3287
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 3288
    return v2

    .line 3286
    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 3291
    :cond_c5
    const/4 p0, 0x1

    return p0
.end method

.method private final greylist-max-o findMimeType(Ljava/lang/String;)Z
    .registers 9

    .line 3152
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 3154
    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 3155
    return v1

    .line 3158
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 3159
    return v3

    .line 3163
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3164
    const/4 v4, 0x3

    if-ne v2, v4, :cond_23

    const-string v4, "*/*"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3165
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 3169
    :cond_23
    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3170
    return v3

    .line 3173
    :cond_32
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3174
    if-lez v4, :cond_6f

    .line 3175
    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 3176
    return v3

    .line 3178
    :cond_4b
    add-int/lit8 v5, v4, 0x2

    if-ne v2, v5, :cond_6f

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2a

    if-ne v2, v5, :cond_6f

    .line 3181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3182
    move v5, v1

    :goto_5d
    if-ge v5, v2, :cond_6f

    .line 3183
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3184
    invoke-virtual {p1, v1, v6, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 3185
    return v3

    .line 3182
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 3191
    :cond_6f
    return v1
.end method

.method private static greylist-max-o findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I
    .registers 6

    .line 380
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 381
    :cond_4
    aget p2, p2, p3

    .line 382
    const/4 p3, 0x0

    :goto_7
    if-ge p3, p2, :cond_15

    .line 383
    aget-object v1, p0, p3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return p3

    .line 382
    :cond_12
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 385
    :cond_15
    return v0
.end method

.method private blacklist hasDataPath(Ljava/lang/String;Z)Z
    .registers 7

    .line 1563
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1564
    return v1

    .line 1566
    :cond_6
    const/4 v0, 0x1

    if-eqz p2, :cond_12

    const-string p2, "/*"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1567
    return v0

    .line 1569
    :cond_12
    iget-object p2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1570
    move v2, v1

    :goto_19
    if-ge v2, p2, :cond_2d

    .line 1571
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1572
    invoke-virtual {v3, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1573
    return v0

    .line 1570
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1576
    :cond_2d
    return v1
.end method

.method private blacklist hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z
    .registers 7

    .line 1369
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1370
    return v1

    .line 1372
    :cond_6
    const/4 v0, 0x1

    if-eqz p2, :cond_1a

    const-string p2, "*"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1a

    .line 1373
    return v0

    .line 1375
    :cond_1a
    iget-object p2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1376
    move v2, v1

    :goto_21
    if-ge v2, p2, :cond_35

    .line 1377
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1378
    invoke-virtual {v3, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1379
    return v0

    .line 1376
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1382
    :cond_35
    return v1
.end method

.method private blacklist hasPartialTypes()Z
    .registers 2

    .line 3148
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private synthetic blacklist lambda$addDataType$0(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    .line 924
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 927
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 931
    :cond_16
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 932
    return-void

    .line 935
    :cond_1f
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    iget-boolean p1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    if-nez p1, :cond_3e

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p1, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    :goto_3f
    iput-boolean p1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 938
    return-void
.end method

.method private synthetic blacklist lambda$addDynamicDataType$1(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 964
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 968
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 969
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-boolean p1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    if-nez p1, :cond_29

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    iput-boolean p1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 973
    :cond_2c
    return-void
.end method

.method private synthetic blacklist lambda$asPredicate$2(Landroid/content/Intent;)Z
    .registers 5

    .line 2349
    const-string v0, "IntentFilter"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_b

    const/4 v2, 0x1

    :cond_b
    return v2
.end method

.method private synthetic blacklist lambda$asPredicateWithTypeResolution$3(Landroid/content/ContentResolver;Landroid/content/Intent;)Z
    .registers 5

    .line 2365
    const-string v0, "IntentFilter"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private blacklist matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 874
    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    const-string p2, "*"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 875
    const/4 p1, 0x1

    if-nez p3, :cond_16

    .line 876
    iget-object p2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 878
    :cond_16
    iget-object p2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    if-le p2, v1, :cond_23

    .line 879
    return p1

    .line 881
    :cond_23
    iget-object p2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_2a
    if-ltz p2, :cond_3c

    .line 882
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 883
    return p1

    .line 881
    :cond_39
    add-int/lit8 p2, p2, -0x1

    goto :goto_2a

    .line 886
    :cond_3c
    return v0

    .line 888
    :cond_3d
    if-eqz p3, :cond_46

    invoke-interface {p3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 889
    return v0

    .line 891
    :cond_46
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private blacklist matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I
    .registers 12

    .line 1743
    if-eqz p4, :cond_a

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1744
    :goto_b
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1745
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1747
    nop

    .line 1749
    const/4 v3, -0x2

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    if-nez v2, :cond_21

    .line 1750
    if-nez p1, :cond_1f

    if-nez p3, :cond_1f

    .line 1751
    const v3, 0x108000

    goto :goto_20

    :cond_1f
    nop

    .line 1750
    :goto_20
    return v3

    .line 1754
    :cond_21
    const-string v4, "*"

    const-string v5, ""

    if-eqz v2, :cond_99

    .line 1755
    if-eqz p2, :cond_2a

    move-object v5, p2

    :cond_2a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    if-eqz p4, :cond_39

    .line 1756
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3a

    .line 1759
    :cond_39
    return v3

    .line 1757
    :cond_3a
    :goto_3a
    nop

    .line 1762
    iget-object p2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1763
    const/high16 v2, 0x580000

    if-eqz p2, :cond_51

    if-eqz p3, :cond_51

    .line 1764
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 1765
    move p2, v2

    goto :goto_53

    :cond_4f
    move p2, v3

    goto :goto_53

    .line 1767
    :cond_51
    const/high16 p2, 0x200000

    :goto_53
    if-eq p2, v2, :cond_95

    .line 1769
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1770
    if-eqz v2, :cond_95

    .line 1771
    invoke-virtual {p0, p3, p4}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result p2

    .line 1772
    if-ltz p2, :cond_94

    .line 1773
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1774
    iget-object v4, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 1775
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v5

    const/high16 v6, 0x500000

    if-eqz v5, :cond_84

    .line 1776
    if-nez v2, :cond_70

    if-nez v4, :cond_70

    .line 1777
    goto :goto_92

    .line 1778
    :cond_70
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_82

    .line 1779
    invoke-direct {p0, p3}, Landroid/content/IntentFilter;->matchRelRefGroups(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_81

    goto :goto_82

    .line 1782
    :cond_81
    return v3

    .line 1780
    :cond_82
    :goto_82
    move p2, v6

    goto :goto_92

    .line 1785
    :cond_84
    if-nez v2, :cond_87

    .line 1786
    goto :goto_92

    .line 1787
    :cond_87
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_93

    .line 1788
    move p2, v6

    .line 1793
    :goto_92
    goto :goto_95

    .line 1790
    :cond_93
    return v3

    .line 1794
    :cond_94
    return v3

    .line 1799
    :cond_95
    :goto_95
    if-ne p2, v3, :cond_98

    .line 1800
    return v3

    .line 1802
    :cond_98
    goto :goto_bc

    .line 1808
    :cond_99
    if-eqz p2, :cond_ba

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ba

    .line 1809
    const-string p3, "content"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ba

    .line 1810
    const-string p3, "file"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ba

    if-eqz p4, :cond_b9

    .line 1811
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ba

    .line 1812
    :cond_b9
    return v3

    .line 1816
    :cond_ba
    const/high16 p2, 0x100000

    :goto_bc
    const/high16 p3, 0x600000

    if-eqz v0, :cond_c1

    .line 1817
    return p3

    .line 1818
    :cond_c1
    const/4 p4, -0x1

    if-eqz v1, :cond_cd

    .line 1819
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 1820
    move p2, p3

    goto :goto_d0

    .line 1822
    :cond_cc
    return p4

    .line 1827
    :cond_cd
    if-eqz p1, :cond_d0

    .line 1828
    return p4

    .line 1832
    :cond_d0
    :goto_d0
    const p1, 0x8000

    add-int/2addr p2, p1

    return p2
.end method

.method private blacklist matchExtras(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 9

    .line 1942
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1943
    return-object v1

    .line 1945
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1946
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1947
    if-nez p1, :cond_1f

    .line 1948
    return-object v2

    .line 1950
    :cond_1f
    iget-object v3, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1951
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1952
    if-eqz v4, :cond_3d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_3d

    .line 1953
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_3d

    .line 1956
    :cond_3c
    goto :goto_10

    .line 1954
    :cond_3d
    :goto_3d
    return-object v2

    .line 1957
    :cond_3e
    return-object v1
.end method

.method private blacklist matchRelRefGroups(Landroid/net/Uri;)Z
    .registers 3

    .line 1836
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 1837
    const/4 p1, 0x0

    return p1

    .line 1839
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/content/UriRelativeFilterGroup;->matchGroupsToUri(Ljava/util/List;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method private blacklist processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 982
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 983
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 984
    if-lez v0, :cond_2c

    add-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_2c

    .line 988
    nop

    .line 989
    nop

    .line 990
    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_24

    .line 991
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 992
    const/4 v3, 0x1

    .line 995
    :cond_24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 996
    return-void

    .line 985
    :cond_2c
    new-instance p2, Landroid/content/IntentFilter$MalformedMimeTypeException;

    invoke-direct {p2, p1}, Landroid/content/IntentFilter$MalformedMimeTypeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static greylist-max-o removeStringFromSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .registers 7

    .line 414
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result p1

    .line 415
    if-gez p1, :cond_7

    return-object p0

    .line 416
    :cond_7
    aget v0, p2, p3

    .line 417
    array-length v1, p0

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1f

    .line 418
    add-int/lit8 v1, p1, 0x1

    sub-int v2, v0, v1

    .line 419
    if-lez v2, :cond_17

    .line 420
    invoke-static {p0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_17
    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x0

    aput-object p1, p0, v0

    .line 423
    aput v0, p2, p3

    .line 424
    return-object p0

    .line 427
    :cond_1f
    array-length p2, p0

    div-int/lit8 p2, p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    .line 428
    if-lez p1, :cond_2a

    const/4 p3, 0x0

    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    :cond_2a
    add-int/lit8 p3, p1, 0x1

    if-ge p3, v0, :cond_32

    sub-int/2addr v0, p3

    invoke-static {p0, p3, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    :cond_32
    return-object p2
.end method

.method private blacklist writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2640
    const/4 v0, 0x0

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2642
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1f

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/*"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2646
    :cond_1f
    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2647
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2648
    return-void
.end method

.method private blacklist writeDataTypesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2618
    return-void

    .line 2621
    :cond_5
    nop

    .line 2622
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "type"

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2623
    :goto_1c
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2624
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2628
    :cond_38
    const-string/jumbo v3, "staticType"

    invoke-direct {p0, p1, v2, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    add-int/lit8 v1, v1, 0x1

    .line 2630
    goto :goto_d

    .line 2632
    :cond_41
    :goto_41
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_57

    .line 2633
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 2636
    :cond_57
    return-void
.end method


# virtual methods
.method public final whitelist actionsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist addAction(Ljava/lang/String;)V
    .registers 3

    .line 815
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method

.method public final whitelist addCategory(Ljava/lang/String;)V
    .registers 3

    .line 1853
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 1854
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1855
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    :cond_1c
    return-void
.end method

.method public final greylist-max-o addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .registers 3

    .line 1436
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1438
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    return-void
.end method

.method public final whitelist addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1430
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1431
    :cond_6
    new-instance v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 1432
    return-void
.end method

.method public final greylist-max-o addDataPath(Landroid/os/PatternMatcher;)V
    .registers 3

    .line 1524
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1525
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    return-void
.end method

.method public final whitelist addDataPath(Ljava/lang/String;I)V
    .registers 4

    .line 1519
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 1520
    return-void
.end method

.method public final whitelist addDataScheme(Ljava/lang/String;)V
    .registers 3

    .line 1131
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1132
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1133
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_1c
    return-void
.end method

.method public final greylist-max-o addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .registers 3

    .line 1329
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1332
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    return-void
.end method

.method public final whitelist addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .registers 4

    .line 1324
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    .line 1325
    return-void
.end method

.method public final whitelist addDataType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 923
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;-><init>(Landroid/content/IntentFilter;)V

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 939
    return-void
.end method

.method public final blacklist addDynamicDataType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 963
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda0;-><init>(Landroid/content/IntentFilter;)V

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 974
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;D)V
    .registers 5

    .line 2110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 2112
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2114
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 2115
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;I)V
    .registers 4

    .line 1974
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 1976
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 1978
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1979
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;J)V
    .registers 5

    .line 2042
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 2044
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2046
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 2047
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2182
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2184
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;Z)V
    .registers 4

    .line 2249
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 2251
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2253
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2254
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[D)V
    .registers 4

    .line 2144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2147
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2149
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 2150
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[I)V
    .registers 4

    .line 2007
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2010
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2012
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2013
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[J)V
    .registers 4

    .line 2075
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2078
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2080
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2081
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 2214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2217
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2219
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2220
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[Z)V
    .registers 4

    .line 2282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2285
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2287
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 2288
    return-void
.end method

.method public final blacklist addMimeGroup(Ljava/lang/String;)V
    .registers 3

    .line 1086
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 1089
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1090
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_18
    return-void
.end method

.method public final whitelist addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V
    .registers 3

    .line 1621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 1625
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    return-void
.end method

.method public whitelist asPredicate()Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 2349
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;-><init>(Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public whitelist asPredicateWithTypeResolution(Landroid/content/ContentResolver;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 2364
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;-><init>(Landroid/content/IntentFilter;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public final whitelist authoritiesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    .line 1488
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist categoriesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist checkDataPathAndSchemeSpecificParts()Z
    .registers 6

    .line 3066
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 3067
    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3068
    :goto_d
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v2, :cond_13

    .line 3069
    move v2, v1

    goto :goto_19

    :cond_13
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3070
    :goto_19
    move v3, v1

    :goto_1a
    if-ge v3, v0, :cond_2e

    .line 3071
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4}, Landroid/os/PatternMatcher;->check()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 3072
    return v1

    .line 3070
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 3075
    :cond_2e
    move v0, v1

    :goto_2f
    if-ge v0, v2, :cond_43

    .line 3076
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->check()Z

    move-result v3

    if-nez v3, :cond_40

    .line 3077
    return v1

    .line 3075
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 3080
    :cond_43
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist clearDynamicDataTypes()V
    .registers 3

    .line 1005
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1006
    return-void

    .line 1009
    :cond_5
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 1010
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1011
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 1013
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1016
    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 1017
    return-void
.end method

.method public final whitelist clearUriRelativeFilterGroups()V
    .registers 2

    .line 1656
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 1657
    return-void
.end method

.method public final whitelist countActions()I
    .registers 2

    .line 822
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public final whitelist countCategories()I
    .registers 2

    .line 1863
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataAuthorities()I
    .registers 2

    .line 1445
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataPaths()I
    .registers 2

    .line 1532
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataSchemeSpecificParts()I
    .registers 2

    .line 1339
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataSchemes()I
    .registers 2

    .line 1141
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataTypes()I
    .registers 2

    .line 1059
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final blacklist countMimeGroups()I
    .registers 2

    .line 1106
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist countStaticDataTypes()I
    .registers 2

    .line 1024
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countUriRelativeFilterGroups()I
    .registers 2

    .line 1633
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public final blacklist dataTypes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public greylist-max-o debugCheck()Z
    .registers 2

    .line 3041
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist describeContents()I
    .registers 2

    .line 2949
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9

    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2816
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const-string v2, "\""

    const/4 v3, 0x0

    if-lez v1, :cond_3d

    .line 2817
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2818
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2819
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2820
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Action: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_18

    .line 2825
    :cond_3d
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v1, :cond_6c

    .line 2826
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2827
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2828
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2829
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Category: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_47

    .line 2834
    :cond_6c
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9b

    .line 2835
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2836
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 2837
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2838
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Scheme: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_76

    .line 2843
    :cond_9b
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v1, :cond_ca

    .line 2844
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2845
    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 2846
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 2847
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2848
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Ssp: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2851
    goto :goto_a5

    .line 2853
    :cond_ca
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v1, :cond_111

    .line 2854
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2855
    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_111

    .line 2856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 2857
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2858
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Authority: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmHost(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmPort(Landroid/content/IntentFilter$AuthorityEntry;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2861
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmWild(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-eqz v4, :cond_109

    const-string v4, " WILD"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    :cond_109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2863
    goto :goto_d4

    .line 2865
    :cond_111
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_140

    .line 2866
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2867
    :goto_11b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_140

    .line 2868
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 2869
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2870
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Path: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2873
    goto :goto_11b

    .line 2875
    :cond_140
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v1, :cond_16d

    .line 2876
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2877
    :goto_14a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 2878
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2879
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UriRelativeFilterGroup: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_14a

    .line 2884
    :cond_16d
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_19c

    .line 2885
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2886
    :goto_177
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 2887
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2888
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "StaticType: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_177

    .line 2893
    :cond_19c
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d2

    .line 2894
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2895
    :goto_1a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 2896
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2897
    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 2898
    goto :goto_1a6

    .line 2901
    :cond_1b9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2902
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Type: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2905
    goto :goto_1a6

    .line 2907
    :cond_1d2
    iget-object v1, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v1, :cond_201

    .line 2908
    iget-object v1, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2909
    :goto_1dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 2910
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2911
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MimeGroup: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1dc

    .line 2916
    :cond_201
    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v1, :cond_20f

    iget v1, p0, Landroid/content/IntentFilter;->mOrder:I

    if-nez v1, :cond_20f

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v1

    if-eqz v1, :cond_245

    .line 2917
    :cond_20f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2918
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    const-string/jumbo v1, "mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2920
    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/IntentFilter;->mOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2921
    const-string v1, ", mHasStaticPartialTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2922
    const-string v1, ", mHasDynamicPartialTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2925
    :cond_245
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    if-eqz v1, :cond_264

    .line 2926
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2927
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AutoVerify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2928
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2930
    :cond_264
    iget-object v1, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_284

    .line 2931
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2932
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mExtras="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2935
    :cond_284
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 2748
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2749
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 2750
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2751
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20900000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_12

    .line 2755
    :cond_27
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    .line 2756
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2757
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_31

    .line 2761
    :cond_46
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_65

    .line 2762
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2763
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2764
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20900000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_50

    .line 2767
    :cond_65
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_84

    .line 2768
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2769
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2770
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PatternMatcher;

    const-wide v2, 0x20b00000004L

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/PatternMatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_6f

    .line 2773
    :cond_84
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_a3

    .line 2774
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2775
    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 2776
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter$AuthorityEntry;

    const-wide v2, 0x20b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/IntentFilter$AuthorityEntry;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_8e

    .line 2779
    :cond_a3
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_c2

    .line 2780
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2781
    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 2782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PatternMatcher;

    const-wide v2, 0x20b00000006L

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/PatternMatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_ad

    .line 2785
    :cond_c2
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e1

    .line 2786
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2787
    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 2788
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20900000007L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_cc

    .line 2791
    :cond_e1
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_100

    .line 2792
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2793
    :goto_eb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 2794
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x2090000000bL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_eb

    .line 2797
    :cond_100
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v0, :cond_10a

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 2798
    :cond_10a
    const-wide v0, 0x10500000008L

    iget v2, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2799
    const-wide v0, 0x10800000009L

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2801
    :cond_120
    const-wide v0, 0x1080000000aL

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2802
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_13a

    .line 2803
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2805
    :cond_13a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_15f

    .line 2806
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2807
    :goto_14a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 2808
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    const-wide v2, 0x20b0000000dL

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/UriRelativeFilterGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_14a

    .line 2811
    :cond_15f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2812
    return-void
.end method

.method public final whitelist getAction(I)Ljava/lang/String;
    .registers 3

    .line 839
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final greylist-max-o getAutoVerify()Z
    .registers 3

    .line 665
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final blacklist getBooleanArrayExtra(Ljava/lang/String;)[Z
    .registers 3

    .line 2299
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object p1, Landroid/content/IntentFilter;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public final blacklist getBooleanExtra(Ljava/lang/String;)Z
    .registers 3

    .line 2264
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_f
    return p1
.end method

.method public final whitelist getCategory(I)Ljava/lang/String;
    .registers 3

    .line 1870
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final whitelist getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .registers 3

    .line 1452
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter$AuthorityEntry;

    return-object p1
.end method

.method public final whitelist getDataPath(I)Landroid/os/PatternMatcher;
    .registers 3

    .line 1539
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PatternMatcher;

    return-object p1
.end method

.method public final whitelist getDataScheme(I)Ljava/lang/String;
    .registers 3

    .line 1148
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final whitelist getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .registers 3

    .line 1346
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PatternMatcher;

    return-object p1
.end method

.method public final whitelist getDataType(I)Ljava/lang/String;
    .registers 3

    .line 1066
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public final blacklist getDoubleArrayExtra(Ljava/lang/String;)[D
    .registers 3

    .line 2161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object p1, Landroid/content/IntentFilter;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public final blacklist getDoubleExtra(Ljava/lang/String;)D
    .registers 4

    .line 2126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_10
    return-wide v0
.end method

.method public final blacklist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 2336
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getHosts()[Ljava/lang/String;
    .registers 3

    .line 3213
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHostsList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3199
    invoke-virtual {p0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3200
    if-eqz v1, :cond_1f

    .line 3201
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    .line 3203
    invoke-virtual {v2}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3204
    goto :goto_b

    .line 3206
    :cond_1f
    return-object v0
.end method

.method public final blacklist getIntArrayExtra(Ljava/lang/String;)[I
    .registers 3

    .line 2024
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object p1, Landroid/content/IntentFilter;->EMPTY_INT_ARRAY:[I

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public final blacklist getIntExtra(Ljava/lang/String;)I
    .registers 3

    .line 1989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_f
    return p1
.end method

.method public final blacklist getLongArrayExtra(Ljava/lang/String;)[J
    .registers 3

    .line 2092
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object p1, Landroid/content/IntentFilter;->EMPTY_LONG_ARRAY:[J

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public final blacklist getLongExtra(Ljava/lang/String;)J
    .registers 4

    .line 2057
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_10
    return-wide v0
.end method

.method public final blacklist getMimeGroup(I)Ljava/lang/String;
    .registers 3

    .line 1101
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final whitelist getOrder()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 623
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    return v0
.end method

.method public final whitelist getPriority()I
    .registers 2

    .line 611
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    return v0
.end method

.method public final blacklist getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 2231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object p1, Landroid/content/IntentFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public final blacklist getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method public final whitelist getUriRelativeFilterGroup(I)Landroid/content/UriRelativeFilterGroup;
    .registers 3

    .line 1648
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/UriRelativeFilterGroup;

    return-object p1
.end method

.method public greylist-max-o getVisibilityToInstantApp()I
    .registers 2

    .line 792
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    return v0
.end method

.method public final greylist-max-o handleAllWebDataURI()Z
    .registers 3

    .line 684
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 684
    :cond_16
    return v0
.end method

.method public final greylist-max-o handlesWebUris(Z)Z
    .registers 8

    .line 706
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 707
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_51

    .line 714
    :cond_1e
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 715
    move v2, v1

    :goto_25
    if-ge v2, v0, :cond_50

    .line 716
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    nop

    .line 718
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_44

    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_44

    :cond_42
    move v3, v1

    goto :goto_45

    :cond_44
    :goto_44
    move v3, v5

    .line 719
    :goto_45
    if-eqz p1, :cond_4a

    .line 723
    if-nez v3, :cond_4d

    .line 724
    return v1

    .line 729
    :cond_4a
    if-eqz v3, :cond_4d

    .line 730
    return v5

    .line 715
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 738
    :cond_50
    return p1

    .line 710
    :cond_51
    :goto_51
    return v1
.end method

.method public final whitelist hasAction(Ljava/lang/String;)Z
    .registers 3

    .line 851
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final whitelist hasCategory(Ljava/lang/String;)Z
    .registers 3

    .line 1881
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final greylist-max-r hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 6

    .line 1472
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1473
    return v1

    .line 1475
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1476
    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_22

    .line 1477
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1478
    const/4 p1, 0x1

    return p1

    .line 1476
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1481
    :cond_22
    return v1
.end method

.method public final whitelist hasDataAuthority(Landroid/net/Uri;)Z
    .registers 2

    .line 1466
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public final greylist-max-r hasDataPath(Landroid/os/PatternMatcher;)Z
    .registers 8

    .line 1582
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1583
    return v1

    .line 1585
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1586
    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_34

    .line 1587
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1588
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1589
    const/4 p1, 0x1

    return p1

    .line 1586
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1592
    :cond_34
    return v1
.end method

.method public final whitelist hasDataPath(Ljava/lang/String;)Z
    .registers 3

    .line 1554
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final whitelist hasDataScheme(Ljava/lang/String;)Z
    .registers 3

    .line 1161
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final greylist-max-r hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z
    .registers 8

    .line 1388
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1389
    return v1

    .line 1391
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1392
    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_34

    .line 1393
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1394
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1395
    const/4 p1, 0x1

    return p1

    .line 1392
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1398
    :cond_34
    return v1
.end method

.method public final whitelist hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .registers 3

    .line 1360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final whitelist hasDataType(Ljava/lang/String;)Z
    .registers 3

    .line 1036
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final greylist-max-r hasExactDataType(Ljava/lang/String;)Z
    .registers 3

    .line 1042
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final blacklist hasExactDynamicDataType(Ljava/lang/String;)Z
    .registers 3

    .line 1047
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final blacklist hasExactStaticDataType(Ljava/lang/String;)Z
    .registers 3

    .line 1052
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final blacklist hasExtra(Ljava/lang/String;)Z
    .registers 3

    .line 2311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    :goto_f
    return p1
.end method

.method public final blacklist hasMimeGroup(Ljava/lang/String;)Z
    .registers 3

    .line 1096
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public greylist-max-o isExplicitlyVisibleToInstantApp()Z
    .registers 3

    .line 800
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o isImplicitlyVisibleToInstantApp()Z
    .registers 3

    .line 804
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final greylist-max-p isVerified()Z
    .registers 4

    .line 767
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 768
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2

    .line 770
    :cond_11
    return v2
.end method

.method public greylist-max-o isVisibleToInstantApp()Z
    .registers 2

    .line 796
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .registers 15

    .line 2388
    if-eqz p3, :cond_7

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    :goto_b
    move-object v2, p1

    .line 2389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 2390
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 2392
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 2389
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public final whitelist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 2425
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public final blacklist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2442
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public final blacklist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 2455
    if-eqz p1, :cond_a

    invoke-direct {p0, p1, p7, p8}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 2458
    const/4 p1, -0x3

    return p1

    .line 2461
    :cond_a
    invoke-direct {p0, p2, p3, p4, p7}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result p1

    .line 2462
    if-gez p1, :cond_11

    .line 2473
    return p1

    .line 2476
    :cond_11
    invoke-virtual {p0, p5}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    .line 2477
    if-eqz p2, :cond_19

    .line 2481
    const/4 p1, -0x4

    return p1

    .line 2484
    :cond_19
    invoke-direct {p0, p9}, Landroid/content/IntentFilter;->matchExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 2485
    if-eqz p2, :cond_21

    .line 2489
    const/4 p1, -0x5

    return p1

    .line 2500
    :cond_21
    return p1
.end method

.method public final whitelist matchAction(Ljava/lang/String;)Z
    .registers 4

    .line 863
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final whitelist matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1905
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1906
    return-object v0

    .line 1909
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1911
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    .line 1912
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_19
    return-object v0

    .line 1915
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1916
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1917
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1918
    return-object v1

    .line 1920
    :cond_2f
    goto :goto_1a

    .line 1922
    :cond_30
    return-object v0
.end method

.method public final whitelist matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 5

    .line 1734
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result p1

    return p1
.end method

.method public final whitelist matchDataAuthority(Landroid/net/Uri;)I
    .registers 3

    .line 1670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result p1

    return p1
.end method

.method public final blacklist matchDataAuthority(Landroid/net/Uri;Z)I
    .registers 7

    .line 1681
    const/4 v0, -0x2

    if-eqz p1, :cond_24

    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    goto :goto_24

    .line 1684
    :cond_8
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1685
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_23

    .line 1686
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1687
    invoke-virtual {v3, p1, p2}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;Z)I

    move-result v3

    .line 1688
    if-ltz v3, :cond_20

    .line 1689
    return v3

    .line 1685
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1692
    :cond_23
    return v0

    .line 1682
    :cond_24
    :goto_24
    return v0
.end method

.method public final blacklist mimeGroupsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final greylist-max-o needsVerification()Z
    .registers 3

    .line 755
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final whitelist pathsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2652
    const-string v0, "autoVerify"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    move v0, v3

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 2655
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2657
    :cond_1b
    :goto_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_197

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2b

    .line 2659
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_197

    .line 2660
    :cond_2b
    if-eq v2, v5, :cond_1b

    const/4 v6, 0x4

    if-ne v2, v6, :cond_31

    .line 2662
    goto :goto_1b

    .line 2665
    :cond_31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2666
    const-string v7, "action"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "name"

    if-eqz v7, :cond_4b

    .line 2667
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2668
    if-eqz v2, :cond_49

    .line 2669
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2671
    :cond_49
    goto/16 :goto_192

    :cond_4b
    const-string v7, "cat"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2672
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2673
    if-eqz v2, :cond_5c

    .line 2674
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2676
    :cond_5c
    goto/16 :goto_192

    :cond_5e
    const-string/jumbo v7, "staticType"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 2677
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2678
    if-eqz v2, :cond_72

    .line 2680
    :try_start_6d
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_6d .. :try_end_70} :catch_71

    .line 2682
    goto :goto_72

    .line 2681
    :catch_71
    move-exception v2

    .line 2684
    :cond_72
    :goto_72
    goto/16 :goto_192

    :cond_74
    const-string/jumbo v7, "type"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 2685
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2686
    if-eqz v2, :cond_88

    .line 2688
    :try_start_83
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_86
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_83 .. :try_end_86} :catch_87

    .line 2690
    goto :goto_88

    .line 2689
    :catch_87
    move-exception v2

    .line 2692
    :cond_88
    :goto_88
    goto/16 :goto_192

    :cond_8a
    const-string v7, "group"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 2693
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2694
    if-eqz v2, :cond_9b

    .line 2695
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 2697
    :cond_9b
    goto/16 :goto_192

    :cond_9d
    const-string/jumbo v7, "scheme"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 2698
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2699
    if-eqz v2, :cond_af

    .line 2700
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2702
    :cond_af
    goto/16 :goto_192

    :cond_b1
    const-string/jumbo v7, "ssp"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "suffix"

    const/4 v9, 0x2

    const-string v10, "aglob"

    const-string/jumbo v11, "sglob"

    const-string/jumbo v12, "prefix"

    const-string/jumbo v13, "literal"

    if-eqz v7, :cond_fc

    .line 2703
    invoke-interface {p1, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2704
    if-eqz v2, :cond_d3

    .line 2705
    invoke-virtual {p0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_fa

    .line 2706
    :cond_d3
    invoke-interface {p1, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    .line 2707
    invoke-virtual {p0, v2, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_fa

    .line 2708
    :cond_dd
    invoke-interface {p1, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e7

    .line 2709
    invoke-virtual {p0, v2, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_fa

    .line 2710
    :cond_e7
    invoke-interface {p1, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f1

    .line 2711
    invoke-virtual {p0, v2, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_fa

    .line 2712
    :cond_f1
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fa

    .line 2713
    invoke-virtual {p0, v2, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 2715
    :cond_fa
    :goto_fa
    goto/16 :goto_192

    :cond_fc
    const-string v7, "auth"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 2716
    const-string v2, "host"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2717
    const-string/jumbo v4, "port"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2718
    if-eqz v2, :cond_116

    .line 2719
    invoke-virtual {p0, v2, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    :cond_116
    goto/16 :goto_192

    :cond_118
    const-string/jumbo v7, "path"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_153

    .line 2722
    invoke-interface {p1, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2723
    if-eqz v2, :cond_12b

    .line 2724
    invoke-virtual {p0, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_152

    .line 2725
    :cond_12b
    invoke-interface {p1, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_135

    .line 2726
    invoke-virtual {p0, v2, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_152

    .line 2727
    :cond_135
    invoke-interface {p1, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13f

    .line 2728
    invoke-virtual {p0, v2, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_152

    .line 2729
    :cond_13f
    invoke-interface {p1, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_149

    .line 2730
    invoke-virtual {p0, v2, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_152

    .line 2731
    :cond_149
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_152

    .line 2732
    invoke-virtual {p0, v2, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 2734
    :cond_152
    :goto_152
    goto :goto_192

    :cond_153
    const-string v4, "extras"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_162

    .line 2735
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_192

    .line 2736
    :cond_162
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 2737
    const-string/jumbo v4, "uriRelativeFilterGroup"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 2738
    new-instance v2, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v2, p1}, Landroid/content/UriRelativeFilterGroup;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V

    goto :goto_192

    .line 2740
    :cond_17a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IntentFilter"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :goto_192
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2743
    goto/16 :goto_1b

    .line 2744
    :cond_197
    return-void
.end method

.method public final blacklist safeCountActions()I
    .registers 2

    .line 832
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public final whitelist schemeSpecificPartsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist schemesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final greylist-max-r setAutoVerify(Z)V
    .registers 3

    .line 651
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 652
    if-eqz p1, :cond_e

    iget p1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 653
    :cond_e
    return-void
.end method

.method public final blacklist setExtras(Landroid/os/PersistableBundle;)V
    .registers 2

    .line 2325
    iput-object p1, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2326
    return-void
.end method

.method public final whitelist setOrder(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 617
    iput p1, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 618
    return-void
.end method

.method public final whitelist setPriority(I)V
    .registers 2

    .line 600
    iput p1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 601
    return-void
.end method

.method public greylist-max-o setVerified(Z)V
    .registers 3

    .line 781
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 782
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 783
    if-eqz p1, :cond_14

    iget p1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 784
    :cond_14
    return-void
.end method

.method public greylist-max-o setVisibilityToInstantApp(I)V
    .registers 2

    .line 788
    iput p1, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    .line 789
    return-void
.end method

.method public blacklist toLongString()Ljava/lang/String;
    .registers 3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    const-string v1, "IntentFilter {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v1, " pri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-lez v1, :cond_28

    .line 566
    const-string v1, " act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_28
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-lez v1, :cond_3c

    .line 570
    const-string v1, " cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_3c
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-lez v1, :cond_50

    .line 574
    const-string v1, " sch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_50
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countUriRelativeFilterGroups()I

    move-result v1

    if-lez v1, :cond_6a

    .line 578
    const-string v1, " grp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_6a
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist typesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 2953
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2954
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 2955
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2956
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_25

    .line 2958
    :cond_22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2960
    :goto_25
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 2961
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2962
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_35

    .line 2964
    :cond_32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2966
    :goto_35
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    .line 2967
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_45

    .line 2970
    :cond_42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2972
    :goto_45
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 2973
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2974
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_55

    .line 2976
    :cond_52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2978
    :goto_55
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 2979
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2980
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_65

    .line 2982
    :cond_62
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2984
    :goto_65
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_84

    .line 2985
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2986
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    move v3, v2

    :goto_73
    if-ge v3, v0, :cond_83

    .line 2988
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2987
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 2990
    :cond_83
    goto :goto_87

    .line 2991
    :cond_84
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2993
    :goto_87
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_a6

    .line 2994
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2995
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2996
    move v3, v2

    :goto_95
    if-ge v3, v0, :cond_a5

    .line 2997
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter$AuthorityEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 2996
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 2999
    :cond_a5
    goto :goto_a9

    .line 3000
    :cond_a6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3002
    :goto_a9
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_c8

    .line 3003
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3004
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3005
    move v3, v2

    :goto_b7
    if-ge v3, v0, :cond_c7

    .line 3006
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3005
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 3008
    :cond_c7
    goto :goto_cb

    .line 3009
    :cond_c8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3011
    :goto_cb
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3012
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3013
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3014
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3016
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3017
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_f8

    .line 3018
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3019
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_fb

    .line 3021
    :cond_f8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3023
    :goto_fb
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_120

    .line 3024
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3025
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3026
    nop

    :goto_10f
    if-ge v2, v0, :cond_11f

    .line 3027
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v1, p1, p2}, Landroid/content/UriRelativeFilterGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3026
    add-int/lit8 v2, v2, 0x1

    goto :goto_10f

    .line 3029
    :cond_11f
    goto :goto_123

    .line 3030
    :cond_120
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3032
    :goto_123
    return-void
.end method

.method public whitelist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2508
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 2509
    const-string v0, "autoVerify"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2512
    :cond_11
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 2513
    const/4 v2, 0x0

    move v3, v2

    :goto_17
    const-string/jumbo v4, "name"

    if-ge v3, v0, :cond_32

    .line 2514
    const-string v5, "action"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    iget-object v6, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2516
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2513
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2518
    :cond_32
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 2519
    move v3, v2

    :goto_37
    if-ge v3, v0, :cond_4f

    .line 2520
    const-string v5, "cat"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2521
    iget-object v6, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2522
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2519
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 2524
    :cond_4f
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->writeDataTypesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2525
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    .line 2526
    move v3, v2

    :goto_57
    if-ge v3, v0, :cond_6f

    .line 2527
    const-string v5, "group"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2528
    iget-object v6, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2529
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2526
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 2531
    :cond_6f
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 2532
    move v3, v2

    :goto_74
    if-ge v3, v0, :cond_8d

    .line 2533
    const-string/jumbo v5, "scheme"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2534
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2535
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2532
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 2537
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 2538
    move v3, v2

    :goto_92
    const-string/jumbo v4, "suffix"

    const-string v5, "aglob"

    const-string/jumbo v6, "sglob"

    const-string/jumbo v7, "prefix"

    const-string/jumbo v8, "literal"

    if-ge v3, v0, :cond_e6

    .line 2539
    const-string/jumbo v9, "ssp"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2540
    iget-object v10, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PatternMatcher;

    .line 2541
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_1b8

    goto :goto_e0

    .line 2555
    :pswitch_b8
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e0

    .line 2552
    :pswitch_c0
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2553
    goto :goto_e0

    .line 2549
    :pswitch_c8
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2550
    goto :goto_e0

    .line 2546
    :pswitch_d0
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2547
    goto :goto_e0

    .line 2543
    :pswitch_d8
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
    nop

    .line 2558
    :goto_e0
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2538
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 2560
    :cond_e6
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 2561
    move v3, v2

    :goto_eb
    if-ge v3, v0, :cond_11d

    .line 2562
    const-string v9, "auth"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2563
    iget-object v10, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 2564
    const-string v11, "host"

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2565
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v11

    if-ltz v11, :cond_117

    .line 2566
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "port"

    invoke-interface {p1, v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2568
    :cond_117
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2561
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 2570
    :cond_11d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 2571
    move v3, v2

    :goto_122
    if-ge v3, v0, :cond_168

    .line 2572
    const-string/jumbo v9, "path"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2573
    iget-object v10, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PatternMatcher;

    .line 2574
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_1c6

    goto :goto_162

    .line 2588
    :pswitch_13a
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_162

    .line 2585
    :pswitch_142
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    goto :goto_162

    .line 2582
    :pswitch_14a
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2583
    goto :goto_162

    .line 2579
    :pswitch_152
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2580
    goto :goto_162

    .line 2576
    :pswitch_15a
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2577
    nop

    .line 2591
    :goto_162
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2571
    add-int/lit8 v3, v3, 0x1

    goto :goto_122

    .line 2593
    :cond_168
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_19b

    .line 2594
    const-string v0, "extras"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2596
    :try_start_171
    iget-object v3, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_176
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_171 .. :try_end_176} :catch_17b

    .line 2599
    nop

    .line 2600
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19b

    .line 2597
    :catch_17b
    move-exception p1

    .line 2598
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2602
    :cond_19b
    :goto_19b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 2603
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countUriRelativeFilterGroups()I

    move-result v0

    .line 2604
    nop

    :goto_1a6
    if-ge v2, v0, :cond_1b6

    .line 2605
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v1, p1}, Landroid/content/UriRelativeFilterGroup;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2604
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a6

    .line 2608
    :cond_1b6
    return-void

    nop

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_d0
        :pswitch_c8
        :pswitch_c0
        :pswitch_b8
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_15a
        :pswitch_152
        :pswitch_14a
        :pswitch_142
        :pswitch_13a
    .end packed-switch
.end method
