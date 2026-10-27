.class Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private blacklist mDataItemDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

.field private blacklist mDataItemHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultValue:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

.field private blacklist mIndexDataGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mIndexGroupDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataMap(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultValue(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDefaultValue(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "dataItemCount"    # I

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    .line 1179
    new-array v0, p1, [Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    .line 1180
    return-void
.end method

.method synthetic constructor blacklist <init>(ILmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;-><init>(I)V

    return-void
.end method
