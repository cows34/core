﻿/*
 * (c) Copyright Ascensio System SIA 2010-2019
 *
 * This program is a free software product. You can redistribute it and/or
 * modify it under the terms of the GNU Affero General Public License (AGPL)
 * version 3 as published by the Free Software Foundation. In accordance with
 * Section 7(a) of the GNU AGPL its Section 15 shall be amended to the effect
 * that Ascensio System SIA expressly excludes the warranty of non-infringement
 * of any third-party rights.
 *
 * This program is distributed WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR  PURPOSE. For
 * details, see the GNU AGPL at: http://www.gnu.org/licenses/agpl-3.0.html
 *
 * You can contact Ascensio System SIA at 20A-12 Ernesta Birznieka-Upisha
 * street, Riga, Latvia, EU, LV-1050.
 *
 * The  interactive user interfaces in modified source and object code versions
 * of the Program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU AGPL version 3.
 *
 * Pursuant to Section 7(b) of the License you must retain the original Product
 * logo when distributing the program. Pursuant to Section 7(e) we decline to
 * grant you any rights under trademark law for use of our trademarks.
 *
 * All the Product's GUI elements, including illustrations and icon sets, as
 * well as technical writing content are licensed under the terms of the
 * Creative Commons Attribution-ShareAlike 4.0 International. See the License
 * terms at http://creativecommons.org/licenses/by-sa/4.0/legalcode
 *
 */
#pragma once
#include "RtfChar.h"

class RtfBookmarkStart : public IDocumentElement
{
public: 
	int nFirstColumn;
	int nLastColumn;
    std::wstring m_sName;
	RtfBookmarkStart()
	{
		nFirstColumn = PROP_DEF;
		nLastColumn = PROP_DEF;
	}
	int GetType()
	{
		return TYPE_RTF_BOOKMARKSTART;
	}
    std::wstring RenderToRtf(RenderParameter oRenderParameter);
    std::wstring RenderToOOX(RenderParameter oRenderParameter);
};
class RtfBookmarkEnd : public IDocumentElement
{
public: 
    std::wstring m_sName;
	RtfBookmarkEnd()
	{
	}
	int GetType()
	{
		return TYPE_RTF_BOOKMARKEND;
	}
    std::wstring RenderToRtf(RenderParameter oRenderParameter);
    std::wstring RenderToOOX(RenderParameter oRenderParameter);
};

class RtfAnnotElem : public IDocumentElement
{
public: 
    std::wstring	m_sValue;	
	int				m_nType;
	
	RtfAnnotElem(int type = 0) : m_nType (type)
	{
	}
	int GetType()
	{
		return TYPE_RTF_ANNOTVALUE;
	}
    std::wstring RenderToRtf(RenderParameter oRenderParameter);
    std::wstring RenderToOOX(RenderParameter oRenderParameter);
};
typedef boost::shared_ptr<RtfAnnotElem>		RtfAnnotElemPtr;

class RtfAnnotation : public IDocumentElement
{
public: 
	RtfAnnotElemPtr			m_oRef;
	RtfAnnotElemPtr			m_oDate;
	RtfAnnotElemPtr			m_oParent;

	TextItemContainerPtr	m_oContent;
	RtfCharProperty			m_oCharProp;
	
	RtfAnnotation()
	{
		m_oContent = TextItemContainerPtr( new TextItemContainer() );
	}
	int GetType()
	{
		return TYPE_RTF_ANNOTATION;
	}
    std::wstring RenderToRtf(RenderParameter oRenderParameter);
    std::wstring RenderToOOX(RenderParameter oRenderParameter);
};
typedef boost::shared_ptr<RtfAnnotation> RtfAnnotationPtr;

class RtfFootnote : public IDocumentElement
{
public: 
	bool m_bEndNote;
	TextItemContainerPtr m_oContent;
	RtfCharProperty m_oCharProp;
	RtfFootnote()
	{
		m_bEndNote = false;
		m_oContent = TextItemContainerPtr( new TextItemContainer() );
	}
	int GetType()
	{
		return TYPE_RTF_FOOTNOTE;
	}
    std::wstring RenderToRtf(RenderParameter oRenderParameter);
    std::wstring RenderToOOX(RenderParameter oRenderParameter);
};

typedef boost::shared_ptr<RtfFootnote>		RtfFootnotePtr;
typedef boost::shared_ptr<RtfBookmarkEnd>	RtfBookmarkEndPtr;
typedef boost::shared_ptr<RtfBookmarkStart> RtfBookmarkStartPtr;
