.class public final Landroid/hardware/radio/ProgramList$Filter;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mExcludeModifications:Z

.field private final greylist-max-o mIdentifierTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIncludeCategories:Z

.field private final greylist-max-o mVendorFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 419
    new-instance v0, Landroid/hardware/radio/ProgramList$Filter$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Filter$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramList$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    .line 382
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    .line 384
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {p1}, Landroid/hardware/radio/Utils;->createIntSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    .line 399
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    .line 402
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    .line 403
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    .line 393
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    .line 394
    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    .line 395
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Set;Ljava/util/Set;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;ZZ)V"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    .line 369
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    .line 370
    iput-boolean p3, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    .line 371
    iput-boolean p4, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    .line 372
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    .line 373
    return-void
.end method


# virtual methods
.method public whitelist areCategoriesIncluded()Z
    .registers 2

    .line 468
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    return v0
.end method

.method public whitelist areModificationsExcluded()Z
    .registers 2

    .line 479
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 490
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 491
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/ProgramList$Filter;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 492
    :cond_a
    check-cast p1, Landroid/hardware/radio/ProgramList$Filter;

    .line 494
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    iget-boolean v3, p1, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 495
    :cond_13
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    iget-boolean v3, p1, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    if-eq v1, v3, :cond_1a

    return v2

    .line 496
    :cond_1a
    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    iget-object v3, p1, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    .line 497
    :cond_25
    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    iget-object p1, p1, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v2

    .line 498
    :cond_30
    return v0
.end method

.method public whitelist getIdentifierTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getIdentifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o getVendorFilter()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 484
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    iget-boolean v2, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    .line 485
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 484
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter [mIdentifierTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdentifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExcludeModifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 407
    iget-object p2, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeIntSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 408
    iget-object p2, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 409
    iget-boolean p2, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 410
    iget-boolean p2, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 411
    iget-object p2, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 412
    return-void
.end method
