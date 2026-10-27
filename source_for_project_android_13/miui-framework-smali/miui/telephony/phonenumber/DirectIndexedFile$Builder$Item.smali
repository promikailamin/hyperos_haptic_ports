.class Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mIndex:I

.field private blacklist mObjects:[Ljava/lang/Object;

.field final synthetic blacklist this$0:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIndex(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)I
    .registers 1

    iget p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObjects(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-object p0
.end method

.method private constructor blacklist <init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V
    .registers 4
    .param p2, "index"    # I
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 1115
    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->this$0:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iput p2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    .line 1117
    iput-object p3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    .line 1118
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1111
    check-cast p1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    invoke-virtual {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->compareTo(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)I
    .registers 4
    .param p1, "another"    # Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    .line 1138
    iget v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    iget v1, p1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1127
    const/4 v0, 0x0

    .line 1128
    .local v0, "result":Z
    if-ne p1, p0, :cond_5

    .line 1129
    const/4 v0, 0x1

    goto :goto_16

    .line 1130
    :cond_5
    instance-of v1, p1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    if-eqz v1, :cond_16

    .line 1131
    iget v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    move-object v2, p1

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    iget v2, v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v0, v1

    .line 1133
    :cond_16
    :goto_16
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1122
    iget v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method
