/*
 * Copyright (c) 2001 World Wide Web Consortium,
 * (Massachusetts Institute of Technology, Institut National de
 * Recherche en Informatique et en Automatique, Keio University). All
 * Rights Reserved. This program is distributed under the W3C's Software
 * Intellectual Property License. This program is distributed in the
 * hope that it will be useful, but WITHOUT ANY WARRANTY; without even
 * the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.
 * See W3C License http://www.w3.org/Consortium/Legal/ for more details.
 */

 /*
 $Log: DOMTestSuite.java,v $
 Revision 1.2  2001-07-23 04:52:20  dom-ts-4
 Initial test running using JUnit.

 */

package org.w3c.domts;

import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.w3c.domts.*;
import java.util.*;

public abstract class DOMTestSuite extends DOMTest {
  private DOMTestDocumentBuilderFactory factory;

  public DOMTestSuite() {
  }
  public void setFactory(DOMTestDocumentBuilderFactory factory) {
    this.factory = factory;
  }
  public DOMTestDocumentBuilderFactory getFactory() {
    return factory;
  }
  abstract public void build(DOMTestSink sink);
}
