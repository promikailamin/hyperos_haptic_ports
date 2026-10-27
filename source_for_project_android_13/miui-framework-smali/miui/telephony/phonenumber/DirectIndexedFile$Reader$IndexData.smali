.class Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private blacklist mDataItemDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

.field private blacklist mDataItems:[[Ljava/lang/Object;

.field private blacklist mIndexGroupDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

.field private blacklist mSizeOfItems:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSizeOfItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)I
    .registers 1

    iget p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSizeOfItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;I)V
    .registers 2

    iput p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method
